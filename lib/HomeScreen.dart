import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'SideBar.dart';  // Make sure the import path is correct

class HomeScreen extends StatelessWidget {
  final pageController = PageController();
  final List<String> imageUrls = [
    'images/1.png', 'images/2.png','images/3.png','images/4.png',
    'images/8.png','images/7.png','images/6.png','images/5.png',
    'images/9.png','images/10.png','images/11.png','images/12.png',
    'images/13.png','images/14.png','images/15.png',

    // Add more image URLs here
  ];

  // Function to handle the navigation
  void openSidebar(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Profile()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        elevation: 4,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xd8fb5d2a),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.0),
              topRight: Radius.circular(12.0),
              bottomLeft: Radius.circular(1.0),
              bottomRight: Radius.circular(1.0)),
        ),
        title: Text(
          "Knowledge Resource Centre",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontStyle: FontStyle.normal,
            fontSize: 12,
            color: Color(0xff000000),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            openSidebar(context);  // Call the function here
          },
          color: Color(0xff212435),
          iconSize: 18,  // Use iconSize instead of size
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.65,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  PageView.builder(
                    controller: pageController,
                    scrollDirection: Axis.horizontal,
                    itemCount: 15,
                    itemBuilder: (context, position) {
                      return Image.network(
                        imageUrls[position],
                        height: 300,
                        width: 200,
                        fit: BoxFit.contain,
                      );
                    },
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                      child: SmoothPageIndicator(
                        controller: pageController,
                        count: 15,
                        axisDirection: Axis.horizontal,
                        effect: SlideEffect(
                          dotColor: Color(0xff9e9e9e),
                          activeDotColor: Color(0xff3a57e8),
                          dotHeight: 6,
                          dotWidth: 3,
                          radius: 16,
                          spacing: 8,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment(-0.8, 0.0),
              child: Container(
                margin: EdgeInsets.all(4),
                padding: EdgeInsets.all(0),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Color(0x1f000000),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.zero,
                  border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                ),
                child: Text(
                  "Welcome to Knowledge Resource Center ! The Knowledge Resource Centre of Chandigarh University consists of a Central Library & seventeen libraries situated in different Academic Blocks. These are well established modern libraries catering to the learning needs of the academic community. The whole collection of the library is computerized and its OPAC is electronically accessible.  Knowledge Center information professionals are always ready to assist you in order to provide excellent digital centric services.",
                  textAlign: TextAlign.start,
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
          ],
        ),
      ),
    );
  }
}
