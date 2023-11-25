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
                    // _buildLibraryCard(context, "Vivek Kumar Yadav", "University Librarian", "ul@cumail.in", "Block B1 Library", "assets/avatars/Vivek Kumar Yadav.png"),
                    // _buildLibraryCard(context, "Manjit Kaur", "Office Assistant University Librarian", "", "Block B1 Library", "assets/avatars/Manjit Kaur.png"),
                    // _buildLibraryCard(context, "Balwinder Singh", "Senior Assistant Librarian", "", "Block B1 Library", "assets/avatars/Balwinder Singh.png"),
                    // _buildLibraryCard(context, "Sonia Katoch", "Senior Assistant Librarian", "", "Block B1 Library", "assets/avatars/Sonia Katoch.png"),
                    // _buildLibraryCard(context, "Renuka Sharma", "Senior Assistant Librarian", "", "Block B1 Library", "assets/avatars/Renuka Sharma.png"),
                    // _buildLibraryCard(context, "Yogesh Sohal", "Assistant Librarian", "", "Block B1 Library", "assets/avatars/Yogesh Sohal.png"),
                    // _buildLibraryCard(context, "Anju Chauhan", "Assistant Librarian", "", "Block B1 Library", "assets/avatars/Anju Chauhan.png"),
                    // _buildLibraryCard(context, "Baldev Chand", "Assistant Librarian", "", "Block B1 Library", "assets/avatars/Baldev Chand.png"),
                    // _buildLibraryCard(context, "Neeraj Kumar", "Assistant Librarian", "", "Block B1 Library", "assets/avatars/Neeraj Kumar.png"),
                    // _buildLibraryCard(context, "Subhajit Panda", "Assistant Librarian", "", "Block B1 Library", "assets/avatars/Subhajit Panda.png"),
                    // _buildLibraryCard(context, "Amandeep Kaur", "Assistant Librarian", "", "Block B1 Library", "assets/avatars/Amandeep Kaur.png"),
                    // _buildLibraryCard(context, "Satish Gupta", "Assistant Librarian", "", "Block B1 Library", "assets/avatars/Satish Gupta.png"),
                    // _buildLibraryCard(context, "Pushpinder Kaur", "Assistant Librarian", "", "Block B1 Library", "assets/avatars/Pushpinder Kaur.png"),
                    // _buildLibraryCard(context, "Veenus Rani", "Professional Assistant", "", "Block B1 Library", "assets/avatars/Veenus Rani.png"),
                    // _buildLibraryCard(context, "Manjeet Kaur", "Professional Assistant", "", "Block B1 Library", "assets/avatars/Manjeet Kaur.png"),
                    // _buildLibraryCard(context, "Khushwant Kaur", "Professional Assistant", "", "Block B1 Library", "assets/avatars/Khushwant Kaur.png"),
                    // _buildLibraryCard(context, "Veenus Rani", "Professional Assistant", "", "Block B1 Library", "assets/avatars/Veenus Rani.png"),
                    // _buildLibraryCard(context, "Manjeet Kaur", "Professional Assistant", "", "Block B1 Library", "assets/avatars/Manjeet Kaur.png"),
                    // _buildLibraryCard(context, "Khushwant Kaur", "Professional Assistant", "", "Block B1 Library", "assets/avatars/Khushwant Kaur.png"),
                    // _buildLibraryCard(context, "Parminder Kaur", "Professional Assistant", "", "Block B1 Library", "assets/avatars/Parminder Kaur.png"),
                    // _buildLibraryCard(context, "Hardeep Kumar", "Professional Assistant", "", "Block B1 Library", "assets/avatars/Hardeep Kumar.png"),
                    // _buildLibraryCard(context, "Bhubnesh Kumar", "Professional Assistant", "", "Block B1 Library", "assets/avatars/Bhubnesh Kumar.png"),
                    _buildLibraryCard(
                        context,
                        "Vivek Kumar Yadav",
                        "University Librarian",
                        "ul@cumail.in",
                        "9455963365",
                        "E-11170",
                        "assets/avatars/Vivek Kumar Yadav.png"),

                    _buildLibraryCard(
                        context,
                        "Manjit Kaur",
                        "Office Assistant",
                        "pa.ul@cumail.in, manjit.e9003@cumail.in",
                        "8195966752",
                        "E-9003",
                        "assets/avatars/Manjit Kaur.png"),

                    _buildLibraryCard(
                        context,
                        "Ekta Kakkar",
                        "Office Assistant",
                        "ekta.e16023@cumail.in",
                        "7404447320",
                        "E-16023",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Yogesh Kumar",
                        "Assistant Librarian",
                        "yogesh.e5270@cumail.in",
                        "8968346476",
                        "E-5270",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Subhajit Panda",
                        "Assistant Librarian",
                        "subhajit.e9641@cumail.in",
                        "8250789798",
                        "E-9641",
                        "assets/avatars/Subhajit Panda.png"),

                    _buildLibraryCard(
                        context,
                        "Manjeet Kaur",
                        "Professional Assistant",
                        "manjeet.e1761@cumail.in",
                        "9541832594",
                        "E-1761",
                        "assets/avatars/Manjeet Kaur.png"),

                    _buildLibraryCard(
                        context,
                        "Gurpreet Soni",
                        "Library Assistant",
                        "gurpreet.e16039@cumail.in",
                        "7986577053",
                        "E-16039",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Vishali Sharma",
                        "Library Assistant",
                        "vishali.e15492@cumail.in",
                        "8894901390",
                        "E-15492",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Kiran Devi",
                        "Library Assistant",
                        "Kiran.e16025@cumail.in",
                        "9805329166",
                        "E-16025",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Sonali",
                        "Library Assistant",
                        "Sonali.e16024@cumail.in",
                        "7807239012",
                        "E-16024",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Tarun Kumar",
                        "Library Attendant",
                        "tarun.e14415@cumail.in",
                        "9988004656",
                        "14415",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Manjot Singh",
                        "Library Attendant",
                        "manjot.e12174@cumail.in",
                        "8146395234",
                        "E-12174",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Amandeep Singh",
                        "Library Attendant",
                        "asinghsohal01@gmail.com",
                        "7740067690",
                        "A51995",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Rupinderjit Singh",
                        "Library Attendant",
                        "rupinderjit.e11815@cumail.in",
                        "8728074303",
                        "E-11815",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Pawanjot Singh",
                        "Library Helper",
                        "pawanjotsingh479@gmail.com",
                        "8284925479",
                        "NA",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Darshan Nath",
                        "Xerox Operator",
                        "msaab5225@gmail.com",
                        "8360303007",
                        "A50498",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Parminder Singh",
                        "Library Assistant",
                        "parminder.e9602@cumail.in",
                        "8360444385",
                        "E-9602",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Raghubir Singh",
                        "Library Attendant",
                        "raghbir.e4095@cumail.in",
                        "8872146377",
                        "E-4095",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Manpreet Singh",
                        "Library Attendant",
                        "manpreet.e2261@cumail.in",
                        "9592724532",
                        "E-2261",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Jaswinder Singh",
                        "Library Attendant",
                        "jaswinder87j@gmail.com",
                        "9872306808",
                        "NA",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Balwinder Singh",
                        "Assistant Librarian",
                        "balwinder.e1560@cumail.in, cul.acq@cumail.in",
                        "9815621803",
                        "E-1560",
                        "assets/avatars/Balwinder Singh.png"),

                    _buildLibraryCard(
                        context,
                        "Vaishali Pathania",
                        "Library Restorer",
                        "vaishali.e6369@cumail.in",
                        "9418922292",
                        "E-6369",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Kamaljeet Singh",
                        "Library Attendant",
                        "kamalpreet.e11717@cumail.in",
                        "9888001890",
                        "E11717",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Vikas",
                        "Assistant Librarian",
                        "vikas.e12654@cumail.in",
                        "8683968303",
                        "E-12654",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Abdul Karim Ansari",
                        "Assistant Librarian",
                        "abdul.e14162@cumail.in",
                        "8685050102",
                        "E14162",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Jashanpreet Kaur",
                        "Library Assistant",
                        "Jashanpreet.e11722@cumail.in",
                        "9781400829",
                        "E-11722",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Gurmail Singh",
                        "Library Attendant",
                        "gurmail.e3891@cumail.in",
                        "9056183980",
                        "E-3891",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Sonia Katoch",
                        "Assistant Librarian",
                        "sonia.e1019@cumail.in",
                        "8558911731",
                        "E-1019",
                        "assets/avatars/Sonia Katoch.png"),

                    _buildLibraryCard(
                        context,
                        "Chandan Kumar",
                        "Library Assistant",
                        "chandan.e15084@cumail.in",
                        "9996923757",
                        "E-15084",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Kifayat Zahoor",
                        "Library Assistant",
                        "Kifayat.e14882@cumail.in",
                        "9622740112",
                        "14882",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Jotpreet Kaur",
                        "Library Trainee",
                        "Jotpreet.t1767@cumail.in",
                        "7973588990",
                        "T1767",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Anju Chauhan",
                        "Assistant Librarian",
                        "anju.e9483@cumail.in",
                        "9217988050",
                        "E-9483",
                        "assets/avatars/Anju Chauhan.png"),

                    _buildLibraryCard(
                        context,
                        "Diksha",
                        "Library Assistant",
                        "diksha.e8987@cumail.in",
                        "9646656892",
                        "E-8987",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Jatinder Singh",
                        "Library Attendant",
                        "jatinder.e6363@cumail.in",
                        "9915347270",
                        "E-6363",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Baldev Chand",
                        "Assistant Librarian",
                        "baldev.e4338@cumail.in",
                        "9501170773",
                        "E-4338",
                        "assets/avatars/Baldev Chand.png"),

                    _buildLibraryCard(
                        context,
                        "Kiranveer Kaur",
                        "Library Assistant",
                        "kiranveer.e4512@cumail.in",
                        "9915574034",
                        "E-4512",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Inder Mati",
                        "Library Assistant",
                        "indermati.e9311@cumail.in",
                        "9023607236",
                        "E-9311",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Rajinder Singh",
                        "Library Restorer",
                        "rajinder.e3409@cumail.in",
                        "9814339981",
                        "E-3409",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Satish Gupta",
                        "Assistant Librarian",
                        "satish.e1881@cumail.in",
                        "8146651529",
                        "E-1881",
                        "assets/avatars/Satish Gupta.png"),

                    _buildLibraryCard(
                        context,
                        "Jagseer Kaur",
                        "Library Restorer",
                        "jagseer.e4672@cumail.in",
                        "8194948453",
                        "E-4672",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Talwinder Singh",
                        "Library Assistant",
                        "talwinder.e12641@cumail.in",
                        "9779441447",
                        "E-12641",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Paramjeet Kaur",
                        "Library Restorer",
                        "paramjit.e1179@cumail.in",
                        "8725077010",
                        "E-1179",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Khushwant Kaur",
                        "Professional Assistant",
                        "khushwant.e1809@cumail.in",
                        "7973051017",
                        "E-1809",
                        "assets/avatars/Khushwant Kaur.png"),

                    _buildLibraryCard(
                        context,
                        "Gurtej Singh",
                        "Library Attendant",
                        "gurtej.e5397@cumail.in",
                        "9914261071",
                        "E5397",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Sandeep Kaur",
                        "Library Helper",
                        "sk4386408@gmail.com",
                        "9041026512",
                        "NA",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Rajpal Singh",
                        "Library Assistant",
                        "rajpal.e11761@cumail.in",
                        "9815438438",
                        "E-11761",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Mandeep Kaur",
                        "Library Assistant",
                        "mandeep.e2504@cumail.in",
                        "8427389197",
                        "E-2504",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Jugraj Singh",
                        "Library Attendant",
                        "jugraj.e6367@cumail.in",
                        "8195992919",
                        "E-6367",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Amandeep Kaur",
                        "Assistant Librarian",
                        "amandeep.e1535@cumail.in",
                        "9815336797",
                        "E-1535",
                        "assets/avatars/Amandeep Kaur.png"),

                    _buildLibraryCard(
                        context,
                        "Manpreet Kaur",
                        "Library Assistant",
                        "manpreet.e1084@cumail.in",
                        "9914230242",
                        "E-1084",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Parbhjot Singh",
                        "Xerox Operator",
                        "parbhjot.e5756@cumail.in",
                        "6239206807",
                        "E-5756",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Arvinder Singh",
                        "Library Restorer",
                        "arvinder.e5289@cumail.in",
                        "9888788761",
                        "E-5289",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Charanjeet Singh",
                        "Library Attendant",
                        "charanjit.e1802@cumail.in",
                        "8699842220",
                        "E-1802",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Nitin Joshi",
                        "Library Attendant",
                        "nitin.e5291@cumail.in",
                        "7837876766",
                        "E-5291",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Sandeep Singh",
                        "Library Assistant",
                        "sandeep.e12758@cumail.in",
                        "8059308088",
                        "E-12758",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Ranjna",
                        "Library Trainee",
                        "ranjna.t1863@cumail.in",
                        "9805775864",
                        "T-1863",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Savinder Singh",
                        "Library Restorer",
                        "savinder.e2260@cumail.in",
                        "9855598288",
                        "E-2260",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Baljinder Kaur",
                        "Library Restorer",
                        "baljinder.e1059@cumail.in",
                        "9914842642",
                        "E-1059",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Suman Sharma",
                        "Library Attendant",
                        "suman.e4145@cumail.in",
                        "8837785843",
                        "E-4145",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Jawala Prasad",
                        "Library Restorer",
                        "jwalaprasad.e4506@cumail.in",
                        "6283985394",
                        "E-4506",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Guddi Shri",
                        "Library Attendant",
                        "guddi.e4995@cumail.in",
                        "9877717790",
                        "E-4995",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Jagjit Singh",
                        "Library Assistant",
                        "jagjit.e14744@cumail.in",
                        "9991617444",
                        "E-14744",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Anjali",
                        "Library Attendant",
                        "anjali.e6113@cumail.in",
                        "9855347327",
                        "E-6113",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Arti Dhiman",
                        "Assistant Librarian",
                        "arti.e14844@cumail.in",
                        "8054044492",
                        "E-14844",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Hardeep Kumar",
                        "Professional Assistant",
                        "hardeep.e3281@cumail.in",
                        "9872810514",
                        "E-3281",
                        "assets/avatars/Hardeep Kumar.png"),

                    _buildLibraryCard(
                        context,
                        "Bhubnesh Kumar",
                        "Professional Assistant",
                        "bhubnesh.e7753@cumail.in",
                        "8219676895",
                        "E-7753",
                        "assets/avatars/Bhubnesh Kumar.png"),

                    _buildLibraryCard(
                        context,
                        "Avtar Singh",
                        "Library Attendant",
                        "avtar.e1759@cumail.in",
                        "7837903853",
                        "E-1759",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Sadik Husain",
                        "Assistant Librarian",
                        "sadik.e14089@cumail.in",
                        "9045418212",
                        "14089",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Amanjot Singh",
                        "Library Attendant",
                        "amanjot.e15449@cumail.in",
                        "7973037225",
                        "15449",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Manpreet Kaur",
                        "Library Trainee",
                        "manpreet.t1706@cumail.in",
                        "8284955436",
                        "T1706",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Parminder Kaur",
                        "Professional Assistant",
                        "parminder.e1842@cumail.in",
                        "9780783233",
                        "E-1842",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Jagtar Singh",
                        "Library Attendant",
                        "jagtar.e11890@cumail.in",
                        "9914655150",
                        "E-11890",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Gurpreet Singh",
                        "Library Trainee",
                        "gurpreet.t1556@cumail.in",
                        "9990180863",
                        "T1556",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Renuka Sharma",
                        "Sr. Assistant Librarian",
                        "renuka.e1009@cumail.in",
                        "8283040426",
                        "E-1009",
                        "assets/avatars/Renuka Sharma.png"),

                    _buildLibraryCard(
                        context,
                        "Pardeep Kumar",
                        "Library Assistant",
                        "pardeep.e1086@cumail.in",
                        "9592694648",
                        "E-1086",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Dilpreet Singh",
                        "Library Attendant",
                        "dilpreet.e11846@cumail.in",
                        "9878292072",
                        "E-11846",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Veenus Rani",
                        "Professional Assistant",
                        "veenus.e1284@cumail.in",
                        "9780452571",
                        "E-1284",
                        "assets/avatars/Veenus Rani.png"),

                    _buildLibraryCard(
                        context,
                        "Gurdial Singh",
                        "Library Attendant",
                        "gurdial.e12603@cumail.in",
                        "9991671276",
                        "E-12603",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Jashanvir Kaur",
                        "Library Trainee",
                        "jasanvir.@cumail.in",
                        "",
                        "T1850",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Pooja Rani",
                        "Library Attendant",
                        "pooja.e6468@cumail.in",
                        "8847371720",
                        "E-6468",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Jasveer Singh",
                        "Library Attendant",
                        "jasvir.e80357@cumail.in",
                        "9814697864",
                        "E80357",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Manpreet Kaur",
                        "Library Helper",
                        "manpreetkaur36276@gmail.com",
                        "7986048295",
                        "NA",
                        "assets/avatars/Avatar Default.png"),

                    _buildLibraryCard(
                        context,
                        "Ramanpreet Kaur",
                        "Library Assistant",
                        "ramanpreet.e16179@cumail.in",
                        "6283621550",
                        "E-16179",
                        "assets/avatars/Avatar Default.png"),
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

  Widget _buildLibraryCard(BuildContext context, String name, String title, String email, String phone, String location, String photo) {
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
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(25.0)),
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
                            child: Image.asset(photo,
                                scale: 2, fit: BoxFit.contain),
                          ),
                        ),
                        Text(
                          '$name',
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          'Designation: $title',
                          style: const TextStyle(
                              fontSize: 14, color: Colors.white),
                          // maxLines: 2,
                        ),
                        Text(
                          'Email: $email',
                          style: const TextStyle(
                              fontSize: 14, color: Colors.white),
                        ),
                        Text(
                          location,
                          style: const TextStyle(
                              fontSize: 14, color: Colors.white),
                        ),
                        const SizedBox(height: 20),
                        MaterialButton(
                          color: const Color(0xffffffff),
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(
                                color: Color(0xff808080), width: 1),
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
