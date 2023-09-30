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

  bool isShowSignInDialog = false;

  @override
  void initState() {
    _btnAnimationController = OneShotAnimation(
      "active",
      autoplay: false,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Color(0x9B1919),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
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
                              child: const Image(
                                image: AssetImage("assets/images/OpenLib.jpg"),
                                fit: BoxFit.fill,
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
                                          color: Color(0xFFD4EFEB),
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
                                            color: Color(0xFFD4EFEB),
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
                                            color: Color(0xFFD4EFEB),
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
