// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:rive/rive.dart';
//
// class Faq extends StatefulWidget {
//   const Faq({super.key});
//
//   @override
//   State<Faq> createState() => _FaqState();
// }
//
// class _FaqState extends State<Faq> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color(0xffadc086),
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//               topRight: Radius.circular(10), topLeft: Radius.circular(10)),
//         ),
//         leading: IconButton(
//           icon: const Card( elevation: 6, clipBehavior: Clip.antiAlias,
//               color: Color(0xffacbe85),
//               shape: CircleBorder() ,
//               child: Icon(Icons.arrow_back, color: Colors.black, shadows: [], size: 30,)),
//           onPressed: () => Navigator.of(context).pop(),
//         ),
//       ),
//       backgroundColor: const Color(0xffadc086),
//       body: Padding(
//         padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Card(
//                 elevation: 18,
//                 clipBehavior: Clip.antiAlias,
//                 child: Container(
//                   height: 250,
//                   width: 500,
//                   decoration: const BoxDecoration(
//                     color: Color(0xff736a6c),
//                   ),
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(10),
//                     child: const RiveAnimation.network(
//                       "https://public.rive.app/community/runtime-files/50-67-note-book-demo.riv",
//                       fit: BoxFit.fill,
//                     ),
//                   ),
//                 ),
//               ),
//               const Text(
//                 'Faq',
//                 style: TextStyle(fontSize: 40, color: Colors.black, fontWeight: FontWeight.w700),
//               ),
//               Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(0,12,0,0),
//                     child: MaterialButton(
//                       onPressed: () { },
//
//                       color: const Color(0xff000000),
//                       elevation: 5,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(15),
//                         side:
//                         const BorderSide(color: Color(0xff808080), width: 1),
//                       ),
//                       textColor: const Color(0xffffffff),
//                       height: 50,
//                       minWidth: 140,
//                       child: const Column(
//                         children: [
//                           SizedBox(
//                             width: 200,
//                           ),
//                           Text(
//                             "Renewal of Books",
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.w400,
//                               fontStyle: FontStyle.normal,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(0,12,0,0),
//                     child: MaterialButton(
//                       onPressed: () { },
//                       color: const Color(0xff000000),
//                       elevation: 5,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(15),
//                         side:
//                         const BorderSide(color: Color(0xff808080), width: 1),
//                       ),
//                       textColor: const Color(0xffffffff),
//                       height: 50,
//                       minWidth: 140,
//                       child: const Column(
//                         children: [
//                           SizedBox(
//                             width: 200,
//                           ),
//                           Text(
//                             "Holding of Books",
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.w400,
//                               fontStyle: FontStyle.normal,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(0,12,0,0),
//                     child: MaterialButton(
//                       onPressed: () { },
//                       color: const Color(0xff000000),
//                       elevation: 5,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(15),
//                         side:
//                         const BorderSide(color: Color(0xff808080), width: 1),
//                       ),
//                       textColor: const Color(0xffffffff),
//                       height: 50,
//                       minWidth: 140,
//                       child: const Column(
//                         children: [
//                           SizedBox(
//                             width: 200,
//                           ),
//                           Text(
//                             "Fine Policy",
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.w400,
//                               fontStyle: FontStyle.normal,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(0,12,0,0),
//                     child: MaterialButton(
//                       onPressed: () { },
//                       color: const Color(0xff000000),
//                       elevation: 5,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(15),
//                         side:
//                         const BorderSide(color: Color(0xff808080), width: 1),
//                       ),
//                       textColor: const Color(0xffffffff),
//                       height: 50,
//                       minWidth: 140,
//                       child: const Column(
//                         children: [
//                           SizedBox(
//                             width: 200,
//                           ),
//                           Text(
//                             "Overdue Charges",
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.w400,
//                               fontStyle: FontStyle.normal,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class Faq extends StatefulWidget {
  const Faq({Key? key});

  @override
  State<Faq> createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  // Function to show the policy details in a dialog
  void _showPolicyDetails(String policyName, String policyContent) {
    if (policyName == "Overdue Charges") {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(policyName),
            content: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                    const Center(
                        child: Text(
                          'Books',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        )),
                    Center(
                      child: DataTable(
                        columns: const [
                          DataColumn(label: Center(
                            child: Text(
                                'Days',
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                            ),
                          )),
                          DataColumn(label: Center(
                            child: Text(
                                'Fine per day',
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                            ),
                          )),
                        ],
                        rows: const [
                          DataRow(cells: [
                            DataCell(Center(child: Text('1 - 7'))),
                            DataCell(Center(child: Text('Rs. 1'))),
                          ]),
                          DataRow(cells: [
                            DataCell(Center(child: Text('8 - 14'))),
                            DataCell(Center(child: Text('Rs. 2'))),
                          ]),
                          DataRow(cells: [
                            DataCell(Center(child: Text('15 - 21'))),
                            DataCell(Center(child: Text('Rs. 3'))),
                          ]),
                          DataRow(cells: [
                            DataCell(Center(child: Text('22 - 28'))),
                            DataCell(Center(child: Text('Rs. 4'))),
                          ]),
                          DataRow(cells: [
                            DataCell(Center(child: Text('29 +'))),
                            DataCell(Center(child: Text('Rs. 5'))),
                          ]),
                        ],
                      ),
                    ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text("Book Bank Books: Rs. 2 per book per day.", style: TextStyle(fontWeight: FontWeight.w700),),
                  )
                ],
              ),
            ),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Close'),
              ),
            ],
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(policyName),
            content: Text(policyContent),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Close'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffadc086),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10), topLeft: Radius.circular(10)),
        ),
        leading: IconButton(
          icon: const Card(
            elevation: 6,
            clipBehavior: Clip.antiAlias,
            color: Color(0xffacbe85),
            shape: CircleBorder(),
            child: Icon(Icons.arrow_back, color: Colors.black, size: 30),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: const Color(0xffadc086),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Card(
              //   // elevation: 18,
              //   // clipBehavior: Clip.antiAlias,
              //   child: Container(
              //     height: 250,
              //     width: 500,
              //     decoration: const BoxDecoration(
              //       color: Color(0xffabbe84),
              //     ),
              //     child: ClipRRect(
              //       borderRadius: BorderRadius.circular(10),
              //       child: const RiveAnimation.network(
              //         "https://public.rive.app/community/runtime-files/113-173-loading-book.riv",
              //         fit: BoxFit.fill,
              //       ),
              //     ),
              //   ),
              // ),
              // Card(
                // elevation: 18,
                // clipBehavior: Clip.antiAlias,
                Container(
                  height: 250,
                  width: 500,
                  decoration: const BoxDecoration(
                    color: Color(0xffabbe84),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: const RiveAnimation.network(
                      "https://public.rive.app/community/runtime-files/113-173-loading-book.riv",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              const Text(
                'FAQ',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
              Column(
                children: [
                  _buildPolicyButton(
                    "Renewal of Books",
                    "A user can renew a book twice, for a period of 14 days, each time subject to availability and demand of book.",
                  ),
                  _buildPolicyButton(
                    "Holding of Books",
                    "A Book that has already been checked out can be placed on hold by users, who will receive a notification when it is returned. Users must pick up their held books within a day of their return, and only a maximum of 2 books(not the same title) can be held at once.",
                  ),
                  _buildPolicyButton(
                    "Fine Policy",
                    "In case you lost issued book, you need to pay double the cost of book as a library fine or the latest edition of same book as replacement.",
                  ),
                  _buildPolicyButton(
                    "Overdue Charges",
                    "Find out about charges for overdue books and how to settle them.",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPolicyButton(String policyName, String policyContent) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
      child: MaterialButton(
        onPressed: () {
          _showPolicyDetails(policyName, policyContent);
        },
        color: const Color(0xff000000),
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: const BorderSide(color: Color(0xff808080), width: 1),
        ),
        textColor: const Color(0xffffffff),
        height: 50,
        minWidth: 140,
        child: Column(
          children: [
            SizedBox(
              width: 200,
              child: Center(
                child: Text(
                  policyName,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
