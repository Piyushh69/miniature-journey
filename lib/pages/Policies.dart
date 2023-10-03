import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class policies extends StatefulWidget {
  const policies({super.key});

  @override
  State<policies> createState() => _PoliciesState();
}

class _PoliciesState extends State<policies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff71686a),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10), topLeft: Radius.circular(10)),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: Color(0xff736a6c),
      body: Padding(
        padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                elevation: 18,
                clipBehavior: Clip.antiAlias,
                child: Container(
                  height: 250,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Color(0xff736a6c),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: const RiveAnimation.network(
                      "https://public.rive.app/community/runtime-files/50-67-note-book-demo.riv",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const Text(
                'Policies',
                style: TextStyle(fontSize: 40, color: Colors.black, fontWeight: FontWeight.w700),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
