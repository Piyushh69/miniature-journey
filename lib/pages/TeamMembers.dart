// import 'package:flutter/material.dart';
//
// class MeetTheTeamPage extends StatelessWidget {
//
//   @override
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF224E6F),
//       appBar: AppBar(
//         backgroundColor: const Color(0x57224e6f),
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//               topRight: Radius.circular(10), topLeft: Radius.circular(10)),
//         ),
//         leading: IconButton(
//           icon: const Card(
//             elevation: 6,
//             clipBehavior: Clip.antiAlias,
//             color: Color(0xff224e6f),
//             shape: CircleBorder(),
//             child: Icon(Icons.arrow_back, color: Colors.white, size: 30),
//           ),
//           onPressed: () => Navigator.of(context).pop(),
//         ),
//       ),
//       body: ListView(padding: const EdgeInsets.all(16.0), children: [
//         _buildIntro(),
//         SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               // Padding(
//               //   padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
//               //   child: Text(
//               //     "Folders",
//               //     textAlign: TextAlign.start,
//               //     overflow: TextOverflow.clip,
//               //     style: TextStyle(
//               //       fontWeight: FontWeight.w700,
//               //       fontStyle: FontStyle.normal,
//               //       fontSize: 16,
//               //       color: Color(0xff000000),
//               //     ),
//               //   ),
//               // ),
//               GridView(
//                 padding: EdgeInsets.all(16),
//                 shrinkWrap: true,
//                 scrollDirection: Axis.vertical,
//                 physics: ClampingScrollPhysics(),
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   crossAxisSpacing: 16,
//                   mainAxisSpacing: 16,
//                   childAspectRatio: 1,
//                 ),
//                 children: [
//                   // _buildLibraryCard("Vivek Kumar Yadav", "University Librarian", "ul@cumail.in", "assets/avatars/Vivek Kumar Yadav.png"),
//                   // _buildLibraryCard("Manjit Kaur", "Office Assistant ", " ", "assets/avatars/Manjit Kaur.png"),
//                   // // _buildLibraryCard("Balwinder Singh", ""," ", "assets/avatars/Avatar 3.jpg"),
//                   _buildLibraryCard("Vivek Kumar Yadav", "University Librarian\nul@cumail.in", "ul@cumail.in", "assets/avatars/Vivek Kumar Yadav.png"),
//                   _buildLibraryCard("Manjit Kaur", "Office Assistant University Librarian", "", "assets/avatars/Manjit Kaur.png"),
//                   _buildLibraryCard("Balwinder Singh", "Senior Assistant Librarian", "", "assets/avatars/Balwinder Singh.png"),
//                   _buildLibraryCard("Sonia Katoch", "Senior Assistant Librarian", "", "assets/avatars/Sonia Katoch.png"),
//                   _buildLibraryCard("Renuka Sharma", "Senior Assistant Librarian", "", "assets/avatars/Renuka Sharma.png"),
//                   _buildLibraryCard("Yogesh Sohal", "Assistant Librarian", "", "assets/avatars/Yogesh Sohal.png"),
//                   _buildLibraryCard("Anju Chauhan", "Assistant Librarian", "", "assets/avatars/Anju Chauhan.png"),
//                   _buildLibraryCard("Baldev Chand", "Assistant Librarian", "", "assets/avatars/Baldev Chand.png"),
//                   _buildLibraryCard("Neeraj Kumar", "Assistant Librarian", "", "assets/avatars/Neeraj Kumar.png"),
//                   _buildLibraryCard("Subhajit Panda", "Assistant Librarian", "", "assets/avatars/Subhajit Panda.png"),
//                   _buildLibraryCard("Amandeep Kaur", "Assistant Librarian", "", "assets/avatars/Amandeep Kaur.png"),
//                   _buildLibraryCard("Satish Gupta", "Assistant Librarian", "", "assets/avatars/Satish Gupta.png"),
//                   _buildLibraryCard("Pushpinder Kaur", "Assistant Librarian", "", "assets/avatars/Pushpinder Kaur.png"),
//                   _buildLibraryCard("Veenus Rani", "Professional Assistant", "", "assets/avatars/Veenus Rani.png"),
//                   _buildLibraryCard("Manjeet Kaur", "Professional Assistant", "", "assets/avatars/Manjeet Kaur.png"),
//                   _buildLibraryCard("Khushwant Kaur", "Professional Assistant", "", "assets/avatars/Khushwant Kaur.png"),
//                   _buildLibraryCard("Veenus Rani", "Professional Assistant", "", "assets/avatars/Veenus Rani.png"),
//                   _buildLibraryCard("Manjeet Kaur", "Professional Assistant", "", "assets/avatars/Manjeet Kaur.png"),
//                   _buildLibraryCard("Khushwant Kaur", "Professional Assistant", "", "assets/avatars/Khushwant Kaur.png"),
//                   _buildLibraryCard("Parminder Kaur", "Professional Assistant", "", "assets/avatars/Parminder Kaur.png"),
//                   _buildLibraryCard("Hardeep Kumar", "Professional Assistant", "", "assets/avatars/Hardeep Kumar.png"),
//                   _buildLibraryCard("Bhubnesh Kumar", "Professional Assistant", "", "assets/avatars/Bhubnesh Kumar.png"),
//                   // _buildLibraryCard("Professional Assistant", "7 Members", "assets/avatars/Avatar 4.jpg"),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ]),
//     );
//   }
//
//   Widget _buildIntro() {
//     return const Column(
//       children: [
//         Text(
//           'Meet the Team',
//           style: TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.bold,
//               color: Color(0xfffaf8be)),
//         ),
//         SizedBox(height: 16),
//         Padding(
//           padding: EdgeInsets.all(16.0),
//           child: Text(
//             'We are a dedicated team of professionals working to provide the best library services to our users. Get to know our team members below:',
//             style: TextStyle(fontSize: 16, color: Colors.white),
//           ),
//         ),
//         SizedBox(height: 16),
//       ],
//     );
//   }
//   Widget _buildLibraryCard(String name, String title, String count, String photo) {
//     return Card(
//       margin: EdgeInsets.all(0),
//       color: Color(0xfff8f6bd),
//       shadowColor: Color(0xff000000),
//       elevation: 18,
//       clipBehavior: Clip.antiAlias,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(8.0),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisSize: MainAxisSize.max,
//         children: [
//           Container(
//             alignment: Alignment.center,
//             margin: EdgeInsets.all(10),
//             // padding: EdgeInsets.all(12),
//             // decoration: BoxDecoration(
//             //   // color: Color(0x2d3a57e8),
//             //   shape: BoxShape.circle,
//             //   border: Border.all(color: Color(0x4d9e9e9e), width: 0),
//             // ),
//           //   child: Icon(
//           //     Icons.all_inclusive,
//           //     color: Color(0xff3a57e8),
//           //     size: 24,
//           //   ),
//           child: ClipRRect(child: Image.asset(photo, scale: 5.7, fit: BoxFit.contain,)),
//           ),
//           Flexible(
//             child: Column(
//               children: [
//                 Text(
//                   name,
//                   textAlign: TextAlign.center,
//                   // maxLines: 1,
//                   overflow: TextOverflow.fade,
//                   style: TextStyle(
//                     fontWeight: FontWeight.w700,
//                     fontStyle: FontStyle.normal,
//                     fontSize: 14,
//                     color: Color(0xff000000),
//                   ),
//                 ),
//                 Text(
//                   title,
//                   textAlign: TextAlign.center,
//                   // maxLines: 1,
//                   overflow: TextOverflow.fade,
//                   style: TextStyle(
//                     fontWeight: FontWeight.w500,
//                     fontStyle: FontStyle.normal,
//                     fontSize: 12,
//                     color: Color(0xff000000),
//                   ),
//                 ),
//             // Center(
//             //   child: RichText(
//             //     text: TextSpan(
//             //       style: const TextStyle(
//             //         fontSize: 14.0,
//             //         color: Colors.black,
//             //       ),
//             //       children: <TextSpan>[
//             //         TextSpan(text: name, style: const TextStyle(fontWeight: FontWeight.bold)),
//             //         TextSpan(text: title),
//             //         TextSpan(text: count),
//             //       ],
//             //     ),
//             //   ),
//             // ),
//               ],
//     ),
//     ),
//         ],
//       ),
//     );
//   }
// }

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:url_launcher/url_launcher.dart';

class MeetTheTeamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF224E6F),
      appBar: AppBar(
        backgroundColor: const Color(0x57224e6f),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            topLeft: Radius.circular(10),
          ),
        ),
        leading: IconButton(
          icon: const Card(
            elevation: 6,
            clipBehavior: Clip.antiAlias,
            color: Color(0xff224e6f),
            shape: CircleBorder(),
            child: Icon(Icons.arrow_back, color: Colors.white, size: 30),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildIntro(),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                GridView(
                  padding: const EdgeInsets.all(16),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: const ClampingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 1,
                  ),
                  children: [
                    _buildLibraryCard(context, "Vivek Kumar Yadav", "University Librarian", "ul@cumail.in", "Block B1 Library", "assets/avatars/Vivek Kumar Yadav.png"),
                    _buildLibraryCard(context, "Manjit Kaur", "Office Assistant University Librarian", "", "Block B1 Library", "assets/avatars/Manjit Kaur.png"),
                    _buildLibraryCard(context, "Balwinder Singh", "Senior Assistant Librarian", "", "Block B1 Library", "assets/avatars/Balwinder Singh.png"),
                    _buildLibraryCard(context, "Sonia Katoch", "Senior Assistant Librarian", "", "Block B1 Library", "assets/avatars/Sonia Katoch.png"),
                    _buildLibraryCard(context, "Renuka Sharma", "Senior Assistant Librarian", "", "Block B1 Library", "assets/avatars/Renuka Sharma.png"),
                    _buildLibraryCard(context, "Yogesh Sohal", "Assistant Librarian", "", "Block B1 Library", "assets/avatars/Yogesh Sohal.png"),
                    _buildLibraryCard(context, "Anju Chauhan", "Assistant Librarian", "", "Block B1 Library", "assets/avatars/Anju Chauhan.png"),
                    _buildLibraryCard(context, "Baldev Chand", "Assistant Librarian", "", "Block B1 Library", "assets/avatars/Baldev Chand.png"),
                    _buildLibraryCard(context, "Neeraj Kumar", "Assistant Librarian", "", "Block B1 Library", "assets/avatars/Neeraj Kumar.png"),
                    _buildLibraryCard(context, "Subhajit Panda", "Assistant Librarian", "", "Block B1 Library", "assets/avatars/Subhajit Panda.png"),
                    _buildLibraryCard(context, "Amandeep Kaur", "Assistant Librarian", "", "Block B1 Library", "assets/avatars/Amandeep Kaur.png"),
                    _buildLibraryCard(context, "Satish Gupta", "Assistant Librarian", "", "Block B1 Library", "assets/avatars/Satish Gupta.png"),
                    _buildLibraryCard(context, "Pushpinder Kaur", "Assistant Librarian", "", "Block B1 Library", "assets/avatars/Pushpinder Kaur.png"),
                    _buildLibraryCard(context, "Veenus Rani", "Professional Assistant", "", "Block B1 Library", "assets/avatars/Veenus Rani.png"),
                    _buildLibraryCard(context, "Manjeet Kaur", "Professional Assistant", "", "Block B1 Library", "assets/avatars/Manjeet Kaur.png"),
                    _buildLibraryCard(context, "Khushwant Kaur", "Professional Assistant", "", "Block B1 Library", "assets/avatars/Khushwant Kaur.png"),
                    _buildLibraryCard(context, "Veenus Rani", "Professional Assistant", "", "Block B1 Library", "assets/avatars/Veenus Rani.png"),
                    _buildLibraryCard(context, "Manjeet Kaur", "Professional Assistant", "", "Block B1 Library", "assets/avatars/Manjeet Kaur.png"),
                    _buildLibraryCard(context, "Khushwant Kaur", "Professional Assistant", "", "Block B1 Library", "assets/avatars/Khushwant Kaur.png"),
                    _buildLibraryCard(context, "Parminder Kaur", "Professional Assistant", "", "Block B1 Library", "assets/avatars/Parminder Kaur.png"),
                    _buildLibraryCard(context, "Hardeep Kumar", "Professional Assistant", "", "Block B1 Library", "assets/avatars/Hardeep Kumar.png"),
                    _buildLibraryCard(context, "Bhubnesh Kumar", "Professional Assistant", "", "Block B1 Library", "assets/avatars/Bhubnesh Kumar.png"),

                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIntro() {
    return const Column(
      children: [
        Text(
          'Meet the Team',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xfffaf8be),
          ),
        ),
        SizedBox(height: 16),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'We are a dedicated team of professionals working to provide the best library services to our users. Get to know our team members below:',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  Widget _buildLibraryCard(BuildContext context, String name, String title, String count, String location, String photo) {
    return GestureDetector(
      onTap: () {
        // Add functionality to show additional information on tap
        // For example, you can use a modal or a bottom sheet to display additional information
        showModalBottomSheet(
          backgroundColor: const Color(0xFF224E6F),
          context: context,
          builder: (BuildContext context) {
            return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(25.0)),
                  color: Colors.white.withOpacity(0.1),
                ),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
              child: Center(
                child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(10),
                    child: ClipRRect(
                      child: Image.asset(photo, scale: 2, fit: BoxFit.contain),
                    ),
                  ),
                  Text(
                    '$name',
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Text(
                    'Designation: $title',
                    style: const TextStyle(fontSize: 14, color: Colors.white),
                    // maxLines: 2,
                  ),
                  Text(
                    'Email: $count',
                    style: const TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  Text(
                    'Library: $location',
                    style: const TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  MaterialButton(
                    color: const Color(0xffffffff),
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side:
                      const BorderSide(color: Color(0xff808080), width: 1),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },

                    child: const Text('Close'),
                  ),
                ],
              ),
            ),
              ),
            ),
            );
          },
        );
      },
      child: Card(
        margin: const EdgeInsets.all(0),
        color: const Color(0xfff8f6bd),
        shadowColor: const Color(0xff000000),
        elevation: 18,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(10),
              child: ClipRRect(
                child: Image.asset(photo, scale: 5.7, fit: BoxFit.contain),
              ),
            ),
            Flexible(
              child: Column(
                children: [
                  Text(
                    name,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.fade,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                  ),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.fade,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      fontSize: 12,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
