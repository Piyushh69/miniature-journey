import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

// import 'components/animated_btn.dart';
// import 'components/sign_in_dialog.dart';

class OpeningHours extends StatefulWidget {
  const OpeningHours({super.key});

  @override
  State<OpeningHours> createState() => _OpeningHoursState();
}

class _OpeningHoursState extends State<OpeningHours> {
  late RiveAnimationController _btnAnimationController;
  String imagePath = 'assets/images/OpenLib.jpg';
  String popupMessage = '';

  bool isShowSignInDialog = false;

  @override
  void initState() {
    super.initState();
    checkLibraryStatus();
    _btnAnimationController = OneShotAnimation(
      "active",
      autoplay: false,
    );
  }
  void checkLibraryStatus() {
    DateTime now = DateTime.now();
    int currentHour = now.hour;
    int currentMinute = now.minute;
    int dayOfWeek = now.weekday;

    if (dayOfWeek >= 1 && dayOfWeek <= 6) {
      // Monday to Saturday
      if ((currentHour == 7 && currentMinute >= 0) ||
          (currentHour > 7 && currentHour < 22)) {
        imagePath = 'assets/images/OpenLib.jpg';
        // popupMessage = 'Library is open';
        if ((currentHour >= 7 ) && ((currentHour <= 9 && currentMinute <= 30) || currentHour < 9)) {
          popupMessage = 'Only B1 library is open';
        } if (((currentHour >= 9 && currentMinute >= 30) || (currentHour > 9)) && ((currentHour <= 16 && currentMinute <= 30) || currentHour < 16)) {
          popupMessage = 'All libraries are open';
        } else if (((currentHour >= 16 && currentMinute >= 30) || (currentHour > 16)) && (currentHour <= 22)) {
          popupMessage = 'Library is open (B1, C3, D5)';
        }
      } else {
        imagePath = 'assets/images/ClosedLib.jpg';
        popupMessage = 'All libraries are closed';
      }
    } else if (dayOfWeek == 7) {
      // Sunday
      if ((currentHour >= 9 && currentMinute >= 30 || currentHour > 9) && currentHour < 16) {
        imagePath = 'assets/images/OpenLib.jpg';
        popupMessage = 'Library is open (B1, C3, D5)';
      } else {
        imagePath = 'assets/images/ClosedLib.jpg';
        popupMessage = 'Library is closed';
      }
    }
    Future.delayed(const Duration(seconds: 3), () {
      if (popupMessage.isNotEmpty) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Library Status'),
              content: Text(popupMessage),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      }
    });
    setState(() {}); // Update UI
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffffffff),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            width: MediaQuery.of(context).size.width * 1.7,
            left: 100,
            bottom: 100,
            child: Image.asset(
              "assets/Backgrounds/Spline.png",
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: const SizedBox(),
            ),
          ),
          const RiveAnimation.asset(
            "assets/RiveAssets/shapes.riv",
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
              child: const SizedBox(),
            ),
          ),
          SingleChildScrollView(
            // scrollDirection = Axis.vertical,
            child: Column(
              children: [
                AnimatedPositioned(
                  top: isShowSignInDialog ? -50 : 0,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  duration: const Duration(milliseconds: 260),
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card(
                            elevation: 18.0,
                            clipBehavior: Clip.antiAlias,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image(fit: BoxFit.fill, image: AssetImage(imagePath),
                            ),
                          ),
                          ),
                          // const Spacer(),
                          SizedBox(
                            // width: 260,
                            child: Stack(
                            children: [
                            SingleChildScrollView(
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // Spacer(),
                                      Icon(
                                        Icons.menu_book_rounded,
                                        size: 40,
                                      ),
                                      Text(
                                        " Library Hours ",
                                        style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Poppins",
                                          height: 1.2,
                                        ),
                                      ),
                                      Icon(
                                        Icons.access_time,
                                        size: 40,
                                      ),
                                    ],
                                  ),
                                  // const SizedBox(height: 16),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(5,1,5,0),
                                    child: Card(
                                      elevation: 10.0,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFD4EFEB),
                                          borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(horizontal: 32),
                                              child: Card(
                                                elevation: 18.0,
                                                clipBehavior: Clip.antiAlias,
                                                child: Container(
                                                  // height: 50,
                                                  width: 280,
                                                  decoration: BoxDecoration(
                                                      color: const Color(0xff851313),
                                                      border: Border.all(color: Colors.white30),
                                                      borderRadius: BorderRadius.circular(10)),
                                                  child: const Center(
                                                    child: Text(
                                                      "MONDAY - SATURDAY",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 25,
                                                        fontWeight: FontWeight.w500,
                                                        fontFamily: "Poppins",
                                                        height: 1.2,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 69),
                                                  padding: const EdgeInsets.fromLTRB(55,10,5,0),
                                                  child: Card(
                                                    elevation: 18.0,
                                                    clipBehavior: Clip.antiAlias,
                                                    child: Container(
                                                      // height: 50,
                                                      // width: 300,
                                                      decoration: BoxDecoration(
                                                          color: const Color(0xff851313),
                                                          border: Border.all(color: Colors.white30),
                                                          borderRadius: BorderRadius.circular(10)),
                                                      child: const Text(
                                                        " B1 ",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 22,
                                                          fontWeight: FontWeight.w500,
                                                          fontFamily: "Poppins",
                                                          height: 1.2,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.fromLTRB(0,10,0,0),
                                                  child: Card(
                                                    elevation: 18.0,
                                                    clipBehavior: Clip.antiAlias,
                                                    child: Container(
                                                      // height: 50,
                                                      // width: 300,
                                                      decoration: BoxDecoration(
                                                          color: const Color(0xFFF3B30D),
                                                          border: Border.all(color: Colors.white30),
                                                          borderRadius: BorderRadius.circular(10)),
                                                      child: const Text(
                                                        " 7:00 AM - 10:00 PM ",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 22,
                                                          fontWeight: FontWeight.w500,
                                                          fontFamily: "Poppins",
                                                          height: 1.2,
                                                        ),
                                                      ),
                                                    ),
                                                  ),

                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 69),
                                                  padding: const EdgeInsets.fromLTRB(55,10,5,0),
                                                  child: Card(
                                                    elevation: 18.0,
                                                    clipBehavior: Clip.antiAlias,
                                                    child: Container(
                                                      // height: 50,
                                                      // width: 300,
                                                      decoration: BoxDecoration(
                                                          color: const Color(0xff851313),
                                                          border: Border.all(color: Colors.white30),
                                                          borderRadius: BorderRadius.circular(10)),
                                                      child: const Text(
                                                        " C3 ",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 22,
                                                          fontWeight: FontWeight.w500,
                                                          fontFamily: "Poppins",
                                                          height: 1.2,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.fromLTRB(0,10,0,0),
                                                  child: Card(
                                                    elevation: 18.0,
                                                    clipBehavior: Clip.antiAlias,
                                                    child: Container(
                                                      // height: 50,
                                                      // width: 300,
                                                      decoration: BoxDecoration(
                                                          color: const Color(0xFFF3B30D),
                                                          border: Border.all(color: Colors.white30),
                                                          borderRadius: BorderRadius.circular(10)),
                                                      child: const Text(
                                                        " 9:30 AM - 10:00 PM ",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 22,
                                                          fontWeight: FontWeight.w500,
                                                          fontFamily: "Poppins",
                                                          height: 1.2,
                                                        ),
                                                      ),
                                                    ),
                                                  ),

                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 69),
                                                  padding: const EdgeInsets.fromLTRB(55,10,5,0),
                                                  child: Card(
                                                    elevation: 18.0,
                                                    clipBehavior: Clip.antiAlias,
                                                    child: Container(
                                                      // height: 50,
                                                      // width: 300,
                                                      decoration: BoxDecoration(
                                                          color: const Color(0xff851313),
                                                          border: Border.all(color: Colors.white30),
                                                          borderRadius: BorderRadius.circular(10)),
                                                      child: const Text(
                                                        " D5 ",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 22,
                                                          fontWeight: FontWeight.w500,
                                                          fontFamily: "Poppins",
                                                          height: 1.2,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.fromLTRB(0,10,0,0),
                                                  child: Card(
                                                    elevation: 18.0,
                                                    clipBehavior: Clip.antiAlias,
                                                    child: Container(
                                                      // height: 50,
                                                      // width: 300,
                                                      decoration: BoxDecoration(
                                                          color: const Color(0xFFF3B30D),
                                                          border: Border.all(color: Colors.white30),
                                                          borderRadius: BorderRadius.circular(10)),
                                                      child: const Text(
                                                        " 9:30 AM - 10:00 PM ",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 22,
                                                          fontWeight: FontWeight.w500,
                                                          fontFamily: "Poppins",
                                                          height: 1.2,
                                                        ),
                                                      ),
                                                    ),
                                                  ),

                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 69),
                                                  padding: const EdgeInsets.fromLTRB(55,10,5,0),
                                                  child: Card(
                                                    elevation: 18.0,
                                                    clipBehavior: Clip.antiAlias,
                                                    child: Container(
                                                      // height: 50,
                                                      // width: 300,
                                                      decoration: BoxDecoration(
                                                          color: const Color(0xff851313),
                                                          border: Border.all(color: Colors.white30),
                                                          borderRadius: BorderRadius.circular(10)),
                                                      child: const Text(
                                                        " All ",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 22,
                                                          fontWeight: FontWeight.w500,
                                                          fontFamily: "Poppins",
                                                          height: 1.2,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.fromLTRB(0,10,0,0),
                                                  child: Card(
                                                    elevation: 18.0,
                                                    clipBehavior: Clip.antiAlias,
                                                    child: Container(
                                                      // height: 50,
                                                      // width: 300,
                                                      decoration: BoxDecoration(
                                                          color: const Color(0xFFF3B30D),
                                                          border: Border.all(color: Colors.white30),
                                                          borderRadius: BorderRadius.circular(10)),
                                                      child: const Text(
                                                        " 9:30 AM - 04:30 PM ",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 22,
                                                          fontWeight: FontWeight.w500,
                                                          fontFamily: "Poppins",
                                                          height: 1.2,
                                                        ),
                                                      ),
                                                    ),
                                                  ),

                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(5,1,5,0),
                                    child: Card(
                                      elevation: 10.0,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: const Color(0xFFD4EFEB),
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                              const EdgeInsets.symmetric(horizontal: 32),
                                              child: Card(
                                                elevation: 18.0,
                                                clipBehavior: Clip.antiAlias,
                                                child: Container(
                                                  // height: 50,
                                                  width: 280,
                                                  decoration: BoxDecoration(
                                                      color: const Color(0xff851313),
                                                      border: Border.all(color: Colors.white30),
                                                      borderRadius: BorderRadius.circular(10)),
                                                  child: const Center(
                                                    child: Text(
                                                      " SUNDAY ",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 25,
                                                        fontWeight: FontWeight.w500,
                                                        fontFamily: "Poppins",
                                                        height: 1.2,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 69),
                                                  padding: const EdgeInsets.fromLTRB(55,10,5,0),
                                                  child: Card(
                                                    elevation: 18.0,
                                                    clipBehavior: Clip.antiAlias,
                                                    child: Container(
                                                      // height: 50,
                                                      // width: 300,
                                                      decoration: BoxDecoration(
                                                          color: const Color(0xff851313),
                                                          border: Border.all(color: Colors.white30),
                                                          borderRadius: BorderRadius.circular(10)),
                                                      child: const Text(
                                                        " B1 ",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 22,
                                                          fontWeight: FontWeight.w500,
                                                          fontFamily: "Poppins",
                                                          height: 1.2,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.fromLTRB(0,10,0,0),
                                                  child: Card(
                                                    elevation: 18.0,
                                                    clipBehavior: Clip.antiAlias,
                                                    child: Container(
                                                      // height: 50,
                                                      // width: 300,
                                                      decoration: BoxDecoration(
                                                          color: const Color(0xFFF3B30D),
                                                          border: Border.all(color: Colors.white30),
                                                          borderRadius: BorderRadius.circular(10)),
                                                      child: const Text(
                                                        " 9:30 AM - 04:30 PM ",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 22,
                                                          fontWeight: FontWeight.w500,
                                                          fontFamily: "Poppins",
                                                          height: 1.2,
                                                        ),
                                                      ),
                                                    ),
                                                  ),

                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 69),
                                                  padding: const EdgeInsets.fromLTRB(55,10,5,0),
                                                  child: Card(
                                                    elevation: 18.0,
                                                    clipBehavior: Clip.antiAlias,
                                                    child: Container(
                                                      // height: 50,
                                                      // width: 300,
                                                      decoration: BoxDecoration(
                                                          color: const Color(0xff851313),
                                                          border: Border.all(color: Colors.white30),
                                                          borderRadius: BorderRadius.circular(10)),
                                                      child: const Text(
                                                        " C3 ",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 22,
                                                          fontWeight: FontWeight.w500,
                                                          fontFamily: "Poppins",
                                                          height: 1.2,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.fromLTRB(0,10,0,0),
                                                  child: Card(
                                                    elevation: 18.0,
                                                    clipBehavior: Clip.antiAlias,
                                                    child: Container(
                                                      // height: 50,
                                                      // width: 300,
                                                      decoration: BoxDecoration(
                                                          color: const Color(0xFFF3B30D),
                                                          border: Border.all(color: Colors.white30),
                                                          borderRadius: BorderRadius.circular(10)),
                                                      child: const Text(
                                                        " 9:30 AM - 04:30 PM ",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 22,
                                                          fontWeight: FontWeight.w500,
                                                          fontFamily: "Poppins",
                                                          height: 1.2,
                                                        ),
                                                      ),
                                                    ),
                                                  ),

                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 69),
                                                  padding: const EdgeInsets.fromLTRB(55,10,5,0),
                                                  child: Card(
                                                    elevation: 18.0,
                                                    clipBehavior: Clip.antiAlias,
                                                    child: Container(
                                                      // height: 50,
                                                      // width: 300,
                                                      decoration: BoxDecoration(
                                                          color: const Color(0xff851313),
                                                          border: Border.all(color: Colors.white30),
                                                          borderRadius: BorderRadius.circular(10)),
                                                      child: const Text(
                                                        " D5 ",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 22,
                                                          fontWeight: FontWeight.w500,
                                                          fontFamily: "Poppins",
                                                          height: 1.2,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.fromLTRB(0,10,0,0),
                                                  child: Card(
                                                    elevation: 18.0,
                                                    clipBehavior: Clip.antiAlias,
                                                    child: Container(
                                                      // height: 50,
                                                      // width: 300,
                                                      decoration: BoxDecoration(
                                                          color: const Color(0xFFF3B30D),
                                                          border: Border.all(color: Colors.white30),
                                                          borderRadius: BorderRadius.circular(10)),
                                                      child: const Text(
                                                        " 9:30 AM - 04:30 PM ",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 22,
                                                          fontWeight: FontWeight.w500,
                                                          fontFamily: "Poppins",
                                                          height: 1.2,
                                                        ),
                                                      ),
                                                    ),
                                                  ),

                                                ),
                                              ],
                                            ),

                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(5,1,5,0),
                                    child: Card(
                                      elevation: 10.0,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: const Color(0xFFD4EFEB),
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                              const EdgeInsets.symmetric(horizontal: 32),
                                              child: Card(
                                                elevation: 18.0,
                                                clipBehavior: Clip.antiAlias,
                                                child: Container(
                                                  // height: 50,
                                                  width: 280,
                                                  decoration: BoxDecoration(
                                                      color: const Color(0xff851313),
                                                      border: Border.all(color: Colors.white30),
                                                      borderRadius: BorderRadius.circular(10)),
                                                  child: const Center(
                                                    child: Text(
                                                      " HOLIDAY ",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 25,
                                                        fontWeight: FontWeight.w500,
                                                        fontFamily: "Poppins",
                                                        height: 1.2,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 69),
                                                  padding: const EdgeInsets.fromLTRB(55,10,5,0),
                                                  child: Card(
                                                    elevation: 18.0,
                                                    clipBehavior: Clip.antiAlias,
                                                    child: Container(
                                                      // height: 50,
                                                      // width: 300,
                                                      decoration: BoxDecoration(
                                                          color: const Color(0xff851313),
                                                          border: Border.all(color: Colors.white30),
                                                          borderRadius: BorderRadius.circular(10)),
                                                      child: const Text(
                                                        " B1 ",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 22,
                                                          fontWeight: FontWeight.w500,
                                                          fontFamily: "Poppins",
                                                          height: 1.2,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.fromLTRB(0,10,0,10),
                                                  child: Card(
                                                    elevation: 18.0,
                                                    clipBehavior: Clip.antiAlias,
                                                    child: Container(
                                                      // height: 50,
                                                      // width: 300,
                                                      decoration: BoxDecoration(
                                                          color: const Color(0xFFF3B30D),
                                                          border: Border.all(color: Colors.white30),
                                                          borderRadius: BorderRadius.circular(10)),
                                                      child: const Text(
                                                        " 9:30 AM - 04:30 PM ",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 22,
                                                          fontWeight: FontWeight.w500,
                                                          fontFamily: "Poppins",
                                                          height: 1.2,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 30,
                                  ),
                                ],

                          ),
                            ),
                              const Spacer(flex: 2),],
                          // AnimatedBtn(
                          //   btnAnimationController: _btnAnimationController,
                          //   press: () {
                          //     _btnAnimationController.isActive = true;
                          //
                          //     Future.delayed(
                          //       const Duration(milliseconds: 800),
                          //           () {
                          //         setState(() {
                          //           isShowSignInDialog = true;
                          //         });
                          //         showCustomDialog(
                          //           context,
                          //           onValue: (_) {
                          //             setState(() {
                          //               isShowSignInDialog = false;
                          //             });
                          //           },
                          //         );
                          //       },
                          //     );
                          //   },
                          // ),
                          // const Padding(
                          //   padding: EdgeInsets.symmetric(vertical: 24),
                          //   child: Text("Hello"),
                          // )
                          ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
