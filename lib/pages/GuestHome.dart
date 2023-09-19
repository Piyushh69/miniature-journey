// import 'package:flutter/material.dart';
//
// class GuestHome extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xfff6f6f6),
//       appBar: AppBar(
//         elevation: 0,
//         centerTitle: false,
//         automaticallyImplyLeading: false,
//         backgroundColor: Color(0xffffffff),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.zero,
//         ),
//         title: Center(
//           child: Text(
//             "Knowledge Resource Center",
//             style: TextStyle(
//               fontWeight: FontWeight.w700,
//               fontStyle: FontStyle.normal,
//               fontSize: 15,
//               color: Color(0xff000000),
//             ),
//           ),
//         ),
//         leading: Icon(
//           Icons.menu,
//           color: Color(0xff212435),
//           size: 24,
//         ),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.fromLTRB(8.0, 0, 10, 0),
//             child: IconButton(
//               icon: const Icon(Icons.account_circle, size: 24),
//               tooltip: '',
//               onPressed: () {
//                 // handle the press
//               },
//             ),
//           ),
//           // Padding(
//           //   padding: EdgeInsets.fromLTRB(8, 0, 16, 0),
//           //   child:
//           //       Icon(Icons.account_circle, color: Color(0xff212435), size: 24),
//           //   onPressed: () {
//           //     // handle the press
//           //   },
//           // ),
//         ],
//       ),
//       body: SingleChildScrollView(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisSize: MainAxisSize.max,
//         children: [
//           Padding(
//             padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
//             child: Text(
//               "The Knowledge Resource Centre of Chandigarh University consists of a Central Library & seventeen libraries situated in different Academic Blocks. These are well established modern libraries catering to the learning needs of the academic community. The whole collection of the library is computerized and its OPAC is electronically accessible.  Knowledge Center information professionals are always ready to assist you in order to provide excellent digital centric services.",
//               textAlign: TextAlign.justify,
//               overflow: TextOverflow.clip,
//               style: TextStyle(
//                 fontWeight: FontWeight.w400,
//                 fontStyle: FontStyle.normal,
//                 fontSize: 14,
//                 color: Color(0xff000000),
//               ),
//             ),
//           ),
//           SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisSize: MainAxisSize.max,
//               children: [
//                 Padding(
//                   padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
//                   child: Text(
//                     "Facts & Statistics",
//                     textAlign: TextAlign.start,
//                     overflow: TextOverflow.clip,
//                     style: TextStyle(
//                       fontWeight: FontWeight.w700,
//                       fontStyle: FontStyle.normal,
//                       fontSize: 14,
//                       color: Color(0xff000000),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.fromLTRB(20,15,20,0),
//                   child: SizedBox(
//                     height: 120,
//                     // scrollDirection: Axis.horizontal,
//                     child: ListView(
//                       scrollDirection: Axis.horizontal,
//                       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       // crossAxisAlignment: CrossAxisAlignment.center,
//                       // mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Container(
//                           margin: EdgeInsets.all(10),
//                           padding: EdgeInsets.all(0),
//                           width: 200,
//                           height: 100,
//                           decoration: BoxDecoration(
//                             color: Color(0x1f000000),
//                             shape: BoxShape.rectangle,
//                             borderRadius: BorderRadius.circular(10.0),
//                             border:
//                                 Border.all(color: Color(0x4d9e9e9e), width: 1),
//                           ),
//                         ),
//                         Container(
//                           margin: EdgeInsets.all(10),
//                           padding: EdgeInsets.all(0),
//                           width: 200,
//                           height: 100,
//                           decoration: BoxDecoration(
//                             color: Color(0x1f000000),
//                             shape: BoxShape.rectangle,
//                             borderRadius: BorderRadius.circular(10.0),
//                             border:
//                             Border.all(color: Color(0x4d9e9e9e), width: 1),
//                           ),
//                         ),
//                         Container(
//                           margin: EdgeInsets.all(10),
//                           padding: EdgeInsets.all(0),
//                           width: 200,
//                           height: 100,
//                           decoration: BoxDecoration(
//                             color: Color(0x1f000000),
//                             shape: BoxShape.rectangle,
//                             borderRadius: BorderRadius.circular(10.0),
//                             border:
//                             Border.all(color: Color(0x4d9e9e9e), width: 1),
//                           ),
//                         ),
//                         Container(
//                           margin: EdgeInsets.all(10),
//                           padding: EdgeInsets.all(0),
//                           width: 200,
//                           height: 100,
//                           decoration: BoxDecoration(
//                             color: Color(0x1f000000),
//                             shape: BoxShape.rectangle,
//                             borderRadius: BorderRadius.circular(10.0),
//                             border:
//                             Border.all(color: Color(0x4d9e9e9e), width: 1),
//                           ),
//                         ),
//                         Container(
//                           margin: EdgeInsets.all(10),
//                           padding: EdgeInsets.all(0),
//                           width: 200,
//                           height: 100,
//                           decoration: BoxDecoration(
//                             color: Color(0x1f000000),
//                             shape: BoxShape.rectangle,
//                             borderRadius: BorderRadius.circular(10.0),
//                             border:
//                             Border.all(color: Color(0x4d9e9e9e), width: 1),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:animate_gradient/animate_gradient.dart';
// import 'package:flutter_gradient/flutter_gradient.dart';
// import 'package:flutter_animation_progress/flutter_animation_progress.dart';

class GuestHome extends StatefulWidget {
  @override
  _GuestHomeState createState() => _GuestHomeState();
}

class _GuestHomeState extends State<GuestHome> {
  // Create a controller for the ListView
  final ScrollController _controller = ScrollController();

  // Create a timer for auto-scrolling
  late Timer _timer;
  int _currentIndex = 0;

  // List of your container data
  final List<Widget> _containers = [
    // Container 1
    Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      width: 200,
      height: 100,
      decoration: BoxDecoration(
        color: Color(0xff007bff),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Color(0x4d9e9e9e), width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Printed Books",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              fontSize: 16,
              color: Color(0xff000000),
            ),
          ),
          SizedBox(height: 8),
          Text(
            "1,25,000",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              fontSize: 18,
              color: Color(0xff000000),
            ),
          ),
        ],
      ),
    ),

    // Container 2
    Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      width: 200,
      height: 100,
      decoration: BoxDecoration(
        color: Color(0xff28a745),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Color(0x1f000000), width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "e - Books",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              fontSize: 16,
              color: Color(0xff000000),
            ),
          ),
          SizedBox(height: 8),
          Text(
            "2,18,640",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              fontSize: 18,
              color: Color(0xff000000),
            ),
          ),
        ],
      ),
    ),

    // Container 3
    Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      width: 200,
      height: 100,
      decoration: BoxDecoration(
        color: Color(0xffffc107),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Color(0x1f000000), width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Print Journals",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              fontSize: 16,
              color: Color(0xff000000),
            ),
          ),
          SizedBox(height: 8),
          Text(
            "340",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              fontSize: 18,
              color: Color(0xff000000),
            ),
          ),
        ],
      ),
    ),

    // Container 4
    Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      width: 200,
      height: 100,
      decoration: BoxDecoration(
        color: Color(0xff2575c6),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Color(0x1f000000), width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "e - Journals",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              fontSize: 16,
              color: Color(0xff000000),
            ),
          ),
          SizedBox(height: 8),
          Text(
            "35,034",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              fontSize: 18,
              color: Color(0xff000000),
            ),
          ),
        ],
      ),
    ),

    // Container 5
    Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      width: 200,
      height: 100,
      decoration: BoxDecoration(
        color: Color(0xffb92020),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Color(0x1f000000), width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Online Databases",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              fontSize: 16,
              color: Color(0xff000000),
            ),
          ),
          SizedBox(height: 8),
          Text(
            "12",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              fontSize: 18,
              color: Color(0xff000000),
            ),
          ),
        ],
      ),
    ),
  ];


  @override
  void initState() {
    super.initState();

    // Start the auto-scrolling timer
    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentIndex < _containers.length - 1) {
        _currentIndex++;
        _controller.animateTo(
          _currentIndex * 220.0, // Adjust the value as needed
          duration: Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
      } else {
        _currentIndex = 0;
        _controller.animateTo(
          0,
          duration: Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    // Cancel the timer to avoid memory leaks
    _timer.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDBFFF4),
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffffff),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: Center(
          child: Text(
            "Knowledge Resource Center",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              fontSize: 15,
              color: Color(0xff000000),
            ),
          ),
        ),
        leading: Icon(
          Icons.menu,
          color: Color(0xff212435),
          size: 24,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0, 10, 0),
            child: IconButton(
              icon: const Icon(Icons.account_circle, size: 24),
              tooltip: 'Open shopping cart',
              onPressed: () {
                // handle the press
              },
            ),
          ),
        ],
      ),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   mainAxisSize: MainAxisSize.max,
      //   children: [
      //     Padding(
      //       padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
      //       child: Text(
      //         // Your text content here
      //         "The Knowledge Resource Centre of Chandigarh University consists of a Central Library & seventeen libraries situated in different Academic Blocks. These are well-established modern libraries catering to the learning needs of the academic community. The whole collection of the library is computerized, and its OPAC is electronically accessible. Knowledge Center information professionals are always ready to assist you to provide excellent digital-centric services.",
      //         textAlign: TextAlign.justify,
      //         overflow: TextOverflow.clip,
      //         style: TextStyle(
      //           fontWeight: FontWeight.w400,
      //           fontStyle: FontStyle.normal,
      //           fontSize: 14,
      //           color: Color(0xff000000),
      //         ),
      //       ),
      //     ),
      // upper hidden code for non animated background.

      body: AnimateGradient(
        primaryBegin: Alignment.bottomCenter,
        primaryEnd: Alignment.bottomLeft,
        secondaryBegin: Alignment.bottomLeft,
        secondaryEnd: Alignment.topRight,
        primaryColors: [
          Colors.green.shade50,
          Colors.green.shade100,
          Colors.white,
        ],
        secondaryColors: [
          Colors.white,
          Colors.blue.shade100,
          Colors.blue.shade200,
        ],
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0x6F5D5353),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          offset: Offset(6, 18),
                          blurRadius: 50,
                          spreadRadius: -15)
                    ],
                    border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                  ),
                  child: Text(
                    // Your text content here
                    "The Knowledge Resource Centre of Chandigarh University consists of a Central Library & seventeen libraries situated in different Academic Blocks. These are well-established modern libraries catering to the learning needs of the academic community. The whole collection of the library is computerized, and its OPAC is electronically accessible. Knowledge Center information professionals are always ready to assist you to provide excellent digital-centric services.",
                    textAlign: TextAlign.justify,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: Text(
                  "Facts & Statistics",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              SizedBox(
                height: 120, // Set the height as needed
                child: ListView.builder(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  itemCount: _containers.length,
                  itemBuilder: (context, index) {
                    return _containers[index];
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}