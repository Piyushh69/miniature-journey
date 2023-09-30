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
          AnimatedPositioned(
            top: isShowSignInDialog ? -50 : 0,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            duration: const Duration(milliseconds: 260),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          image: AssetImage("assets/images/OpenLib.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      elevation: 18.0,
                      clipBehavior: Clip.antiAlias,
                    ),
                    // const Spacer(),
                    SizedBox(
                      // width: 260,
                      child: Column(
                        children: [
                          Row(
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
                          SizedBox(height: 16),
                          Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 32),
                                child: Card(
                                  child: Container(
                                    // height: 50,
                                    // width: 300,
                                    decoration: BoxDecoration(
                                        color: Color(0xff851313),
                                        border: Border.all(color: Colors.white30),
                                        borderRadius: BorderRadius.circular(10)),
                                    child: Text(
                                      " MONDAY - SATURDAY ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Poppins",
                                        height: 1.2,
                                      ),
                                    ),
                                  ),
                                  elevation: 18.0,
                                  clipBehavior: Clip.antiAlias,
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 69),
                                    padding: const EdgeInsets.fromLTRB(65,10,5,0),
                                    child: Card(
                                      child: Container(
                                        // height: 50,
                                        // width: 300,
                                        decoration: BoxDecoration(
                                            color: Color(0xFFB39DDB),
                                            border: Border.all(color: Colors.white30),
                                            borderRadius: BorderRadius.circular(10)),
                                        child: Text(
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
                                      elevation: 18.0,
                                      clipBehavior: Clip.antiAlias,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0,10,0,0),
                                    child: Card(
                                      child: Container(
                                        // height: 50,
                                        // width: 300,
                                        decoration: BoxDecoration(
                                            color: Colors.deepPurple,
                                            border: Border.all(color: Colors.white30),
                                            borderRadius: BorderRadius.circular(10)),
                                        child: Text(
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
                                      elevation: 18.0,
                                      clipBehavior: Clip.antiAlias,
                                    ),

                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 69),
                                    padding: const EdgeInsets.fromLTRB(65,10,5,0),
                                    child: Card(
                                      child: Container(
                                        // height: 50,
                                        // width: 300,
                                        decoration: BoxDecoration(
                                            color: Color(0xFFB39DDB),
                                            border: Border.all(color: Colors.white30),
                                            borderRadius: BorderRadius.circular(10)),
                                        child: Text(
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
                                      elevation: 18.0,
                                      clipBehavior: Clip.antiAlias,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0,10,0,0),
                                    child: Card(
                                      child: Container(
                                        // height: 50,
                                        // width: 300,
                                        decoration: BoxDecoration(
                                            color: Colors.deepPurple,
                                            border: Border.all(color: Colors.white30),
                                            borderRadius: BorderRadius.circular(10)),
                                        child: Text(
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
                                      elevation: 18.0,
                                      clipBehavior: Clip.antiAlias,
                                    ),

                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 69),
                                    padding: const EdgeInsets.fromLTRB(65,10,5,0),
                                    child: Card(
                                      child: Container(
                                        // height: 50,
                                        // width: 300,
                                        decoration: BoxDecoration(
                                            color: Color(0xFFB39DDB),
                                            border: Border.all(color: Colors.white30),
                                            borderRadius: BorderRadius.circular(10)),
                                        child: Text(
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
                                      elevation: 18.0,
                                      clipBehavior: Clip.antiAlias,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0,10,0,0),
                                    child: Card(
                                      child: Container(
                                        // height: 50,
                                        // width: 300,
                                        decoration: BoxDecoration(
                                            color: Colors.deepPurple,
                                            border: Border.all(color: Colors.white30),
                                            borderRadius: BorderRadius.circular(10)),
                                        child: Text(
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
                                      elevation: 18.0,
                                      clipBehavior: Clip.antiAlias,
                                    ),

                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 69),
                                    padding: const EdgeInsets.fromLTRB(65,10,5,0),
                                    child: Card(
                                      child: Container(
                                        // height: 50,
                                        // width: 300,
                                        decoration: BoxDecoration(
                                            color: Color(0xFFB39DDB),
                                            border: Border.all(color: Colors.white30),
                                            borderRadius: BorderRadius.circular(10)),
                                        child: Text(
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
                                      elevation: 18.0,
                                      clipBehavior: Clip.antiAlias,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0,10,0,0),
                                    child: Card(
                                      child: Container(
                                        // height: 50,
                                        // width: 300,
                                        decoration: BoxDecoration(
                                            color: Colors.deepPurple,
                                            border: Border.all(color: Colors.white30),
                                            borderRadius: BorderRadius.circular(10)),
                                        child: Text(
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
                                      elevation: 18.0,
                                      clipBehavior: Clip.antiAlias,
                                    ),

                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const Spacer(flex: 2),
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
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 24),
                      child: Text("Hello"),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
