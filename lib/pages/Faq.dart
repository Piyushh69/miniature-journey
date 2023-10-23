import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class Faq extends StatefulWidget {
  const Faq({Key? key});

  @override
  State<Faq> createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  List<String> questions = [
    "How do I find books in the library?",
    "How do I use the library's computers?",
    "What is the renewal policy for books?",
    "How can I place a book on hold?",
    "How do I place holds on books  using the library app?",
    "What is the fine policy for lost books?",
    "What are the charges for overdue books?"
  ];

  List<String> answers = [
    "To find books in the library, you can use the advanced search feature in the library app. To do this, tap on the 'Advanced Search' button and enter your search criteria, such as title, author, subject, or keywords. The app will then show you a list of all the available books that match your search criteria. You can also browse the library's collection by category or genre by tapping on the 'Browse' button.",
    "There are computers installed in all the libraries that students can use. To use a computer, simply log in with your library card and PIN number. You can use the computers to access the internet, check your email, work on documents, and access online resources, such as research databases and e-books.",
    "A user can renew a book twice, for a period of 14 days, each time subject to availability and demand of the book.",
    "A Book that has already been checked out can be placed on hold by users, who will receive a notification when it is returned. Users must pick up their held books within a day of their return, and only a maximum of 2 books (not the same title) can be held at once.",
    "To place holds on books using the library app, tap on the 'My Account' button and then tap on the 'Holds' tab. Tap on the 'Place Hold' button next to any book that you want to place a hold on. You will be notified when the book is available for checkout.",
    "In case you lose an issued book, you need to pay double the cost of the book as a library fine or the latest edition of the same book as a replacement.",
    "Find out about charges for overdue books and how to settle them in the policies page."
  ];

  int selectedQuestionIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff224e6f),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10), topLeft: Radius.circular(10)),
        ),
        leading: IconButton(
          icon: const Card(
            elevation: 6,
            clipBehavior: Clip.antiAlias,
            color: Color(0xff224e6f),
            shape: CircleBorder(),
            child: Icon(Icons.arrow_back, color: Colors.black, size: 30),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: const Color(0xff224e6f),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 250,
                width: 500,
                decoration: const BoxDecoration(
                  color: Color(0xff224e6f),
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
                "FAQ's",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
              Column(
                children: List.generate(
                  questions.length,
                      (index) => _buildQuestion(questions[index], answers[index], index),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQuestion(String question, String answer, int index) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
      child: Material(
        color: const Color(0xfffaf8be),
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: const BorderSide(color: Color(0xff808080), width: 1),
        ),
        child: ExpansionTile(
          onExpansionChanged: (expanded) {
            setState(() {
              if (expanded) {
                selectedQuestionIndex = index;
              } else {
                selectedQuestionIndex = -1;
              }
            });
          },
          title: Text(
            question,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
              color: Colors.black,
            ),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                answer,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
