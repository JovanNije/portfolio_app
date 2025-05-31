import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({super.key});

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
  ColorContainer(String text, Color color) {
    return Container(
      decoration: BoxDecoration(
          border:
          Border.all(color: color, style: BorderStyle.solid, width: 2.0),
          borderRadius: BorderRadius.circular(5.0)),
      padding: EdgeInsets.all(7.0),
      child: Text(
        text,
        style: GoogleFonts.poppins(fontSize: 15.0),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: const IconThemeData(
          size: 35.0,
          color: Colors.black,
        ),
      ),
      endDrawer: MyDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            //Introduction, first section
            CircleAvatar(
              radius: 117.0,
              backgroundColor: Colors.greenAccent,
              child: CircleAvatar(
                radius: 113.0,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 110.0,
                  backgroundColor: Colors.white,
                  child: Image.asset("assets/profile_icon_circle.png", filterQuality: FilterQuality.high,),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PoppinsBold("About me", 35.0),
                  Poppins("Hello! I'm Jovan Lontos and i specialize", 15),
                  Poppins("in flutter development", 15),
                  Poppins("I develop innovative applications for", 15),
                  Poppins("Android, Ios, Web, Mac, Linux", 15),
                  SizedBox(height: 10.0),
                  Wrap(
                    spacing: 7.0,
                    runSpacing: 7.0,
                    children: [
                      ColorContainer("Flutter", Colors.redAccent),
                      ColorContainer("Firebase", Colors.greenAccent),
                      ColorContainer("Laravel", Colors.blueAccent),
                      ColorContainer("MySql", Colors.purpleAccent),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 40),
              child: Container(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 120),
                    PoppinsBold("What I Do?", 40),
                    SizedBox(height: 60),

                    // First row: Text on the left, card on the right
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                PoppinsBold("Frontend Development", 22),
                                SizedBox(height: 5),
                                Poppins(
                                  "Building responsive and modern UIs using Flutter.\nReach out and let’s start designing intuitive UIs together.",
                                  16,
                                ),
                              ],
                            ),
                          ),
                        ),
                        AnimatedCard(
                          imagePath: "assets/flutter.png",
                          text: "Frontend development",
                          fit: BoxFit.fitHeight,
                          reverse: true,
                          color: Colors.blueAccent,
                          width: 220,
                          height: 220,
                        ),
                      ],
                    ),

                    SizedBox(height: 50),

                    // Second row: Card on the left, text on the right
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedCard(
                          imagePath: "assets/firebase.png",
                          text: "Databases",
                          fit: BoxFit.contain,
                          reverse: true,
                          color: Colors.purpleAccent,
                          width: 220,
                          height: 220,
                        ),
                        Flexible(
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                PoppinsBold("Database Management", 22),
                                SizedBox(height: 5),
                                Poppins(
                                  "Designing and managing databases with SQL and Firebase.\nEfficient, scalable, and structured data solutions — ready when you are.",
                                  16,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 50),

                    // Third row: Text on the left, card on the right
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                PoppinsBold("Backend Development", 22),
                                SizedBox(height: 5),
                                Poppins(
                                  "Creating robust APIs and server logic using Laravel.\nLet’s build the engine behind your app — fast, secure, and scalable.",
                                  16,
                                ),
                              ],
                            ),
                          ),
                        ),
                        AnimatedCard(
                          imagePath: "assets/laravel.png",
                          text: "Backend development",
                          fit: BoxFit.fitHeight,
                          reverse: true,
                          color: Colors.redAccent,
                          width: 220,
                          height: 220,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,)
          ],
        ),
      ),
    ));
  }
}
