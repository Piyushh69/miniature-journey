// import 'package:flutter/material.dart';
//
// class MyDrawer extends StatelessWidget {
//   const MyDrawer({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       backgroundColor: const Color.fromARGB(255, 212, 33, 34),
//       child: SizedBox(
//         child: ListView(
//           children: [
//             const DrawerHeader(
//               decoration: BoxDecoration(color: Color.fromARGB(255, 32, 50, 58)),
//               child: Center(
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.symmetric(),
//                       child: CircleAvatar(
//                         radius: 50,
//                         backgroundImage: AssetImage("assets/images/GuestAvatar.png"),
//                       ),
//                     ),
//                     // Padding(
//                     //   padding: EdgeInsets.fromLTRB(8,10,8,8),
//                     //   child: Text(
//                     //     "Guest",
//                     //     style: TextStyle(fontWeight: FontWeight.normal),
//                     //   ),
//                     // ),
//                   ],
//                 ),
//               ),
//             ),
//             ListTile(
//               onTap: () {
//                 Navigator.pop(context);
//               },
//               leading: const Icon(
//                 Icons.home_outlined,
//                 color: Colors.white,
//               ),
//               title: const Text(
//                 "Home",
//                 style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
//               ),
//             ),
//             ListTile(
//               onTap: () {},
//               leading: const Icon(
//                 Icons.info_outline_rounded,
//                 color: Colors.white,
//               ),
//               title: const Text(
//                 "About us",
//                 style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
//               ),
//             ),
//             ListTile(
//               onTap: () {},
//               leading: const Icon(
//                 Icons.collections_bookmark_outlined,
//                 color: Colors.white,
//               ),
//               title: const Text(
//                 "Collections",
//                 style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
//               ),
//             ),
//             ListTile(
//               onTap: () {},
//               leading: const Icon(
//                 Icons.access_time_rounded,
//                 color: Colors.white,
//               ),
//               title: const Text(
//                 "Opening Hours",
//                 style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
//               ),
//             ),
//             ListTile(
//               onTap: () {},
//               leading: const Icon(
//                 Icons.rule_rounded,
//                 color: Colors.white,
//               ),
//               title: const Text(
//                 "Policies",
//                 style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
//               ),
//             ),
//             ListTile(
//               onTap: () {},
//               leading: const Icon(
//                 Icons.question_mark_sharp,
//                 color: Colors.white,
//               ),
//               title: const Text(
//                 "FAQ",
//                 style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
//               ),
//             ),
//             ListTile(
//               onTap: () {},
//               leading: const Icon(
//                 Icons.settings,
//                 color: Colors.white,
//               ),
//               title: const Text(
//                 "Setting",
//                 style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:krc/pages/OpeningHours.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  // Define a list of gradient colors
  final List<List<Color>> gradients = [
    [const Color(0xFFD42122), const Color(0xFF20323A)],
    [const Color(0xFF207DAA), const Color(0xFF20323A)],
    [const Color(0xFF93BE88), const Color(0xFF20323A)],
    [const Color(0xFFE3CC97), const Color(0xFF20323A)],
  ];

  // Index to track the current gradient
  int currentGradientIndex = 0;

  // Function to change the gradient color
  void changeGradient() {
    setState(() {
      currentGradientIndex = (currentGradientIndex + 1) % gradients.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.transparent,
        child: AnimatedContainer(
          duration: const Duration(seconds: 3), // Change duration as needed
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: gradients[currentGradientIndex],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SizedBox(
            child: ListView(
              children: [
                const DrawerHeader(
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage("assets/images/GuestAvatar.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  leading: const Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Home",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(
                    Icons.info_outline_rounded,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "About us",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(
                    Icons.collections_bookmark_outlined,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Collections",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => OpeningHours()));
                  },
                  leading: const Icon(
                    Icons.access_time_rounded,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Opening Hours",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(
                    Icons.rule_rounded,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Policies",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(
                    Icons.question_mark_sharp,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "FAQ",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Setting",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    // Start an animation to change the gradient color
    // You can change the duration and interval as needed
    Timer.periodic(const Duration(seconds: 2), (timer) {
      changeGradient();
    });
  }
}
