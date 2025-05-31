import 'package:flutter/material.dart';
import 'package:protfolio_app/components.dart';
class AboutWeb extends StatefulWidget {
  const AboutWeb({super.key});

  @override
  State<AboutWeb> createState() => _AboutWebState();
}

class _AboutWebState extends State<AboutWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var heightWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: MyDrawer(),
      backgroundColor: Colors.white,
      appBar: MyAppBar(),
      body: ListView(
        children: [
          // Second section
          Container(
            width: heightWidth,
            height: heightDevice,
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image Card
                Container(
                  constraints: BoxConstraints(maxHeight: 500),
                  child: Card(
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Colors.greenAccent),
                    ),
                    shadowColor: Colors.greenAccent,
                    child: Image.asset(
                      "assets/web.jpg",
                      height: heightDevice / 2,
                      width: heightWidth * 0.35,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 60),
                // About Me Column
                SizedBox(
                  width: heightWidth * 0.3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 30),
                      PoppinsBold("About Me", 30),
                      SizedBox(height: 15),
                      Poppins(
                          "Hello! I'm Jovan and I specialize in Flutter development.",
                          15),
                      Poppins(
                          "I build beautiful and responsive apps for all platforms.",
                          15),
                      SizedBox(height: 15),
                      Wrap(
                        children: [
                          BorderedTextPoppins("flutter", 15, Colors.redAccent),
                          BorderedTextPoppins(
                              "Firebase", 15, Colors.greenAccent),
                          BorderedTextPoppins("Laravel", 15, Colors.blueAccent),
                          BorderedTextPoppins("MySQL", 15, Colors.purpleAccent),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Third section
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 120),
                PoppinsBold("What I Do?", 40),
                SizedBox(height: 60),

                // First row: Text left, card right
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            PoppinsBold("Frontend Development", 26),
                            SizedBox(height: 8),
                            Poppins(
                              "Building responsive and modern UIs using Flutter.\nReach out and let’s start designing intuitive UIs together.",
                              18,
                            ),
                          ],
                        ),
                      ),
                    ),
                    AnimatedCard(
                      imagePath: "assets/flutter.png",
                      text: "Frontend development",
                      fit: BoxFit.fill,
                      reverse: true,
                      color: Colors.blueAccent,
                    ),
                  ],
                ),

                SizedBox(height: 40),

                // Second row: Card left, text right
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedCard(
                      imagePath: "assets/firebase.png",
                      text: "Databases",
                      fit: BoxFit.contain,
                      reverse: true,
                      color: Colors.purpleAccent,
                    ),
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            PoppinsBold("Database Management", 26),
                            SizedBox(height: 8),
                            Poppins(
                              "Designing and managing databases with SQL and Firebase.\nEfficient, scalable, and structured data solutions — ready when you are.",
                              18,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 40),

                // Third row: Text left, card right
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            PoppinsBold("Backend Development", 26),
                            SizedBox(height: 8),
                            Poppins(
                              "Creating robust APIs and server logic using Laravel.\nLet’s build the engine behind your app — fast, secure, and scalable.",
                              18,
                            ),
                          ],
                        ),
                      ),
                    ),
                    AnimatedCard(
                      imagePath: "assets/laravel.png",
                      text: "Backend development",
                      fit: BoxFit.fill,
                      reverse: true,
                      color: Colors.redAccent,
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Fourth section
          SizedBox(height: 60,)
        ],
      ),
    );
  }
}

