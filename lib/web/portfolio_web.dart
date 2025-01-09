import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protfolio_app/components.dart';

class PortfolioWeb extends StatefulWidget {
  const PortfolioWeb({super.key});

  @override
  State<PortfolioWeb> createState() => _PortfolioWebState();
}

class _PortfolioWebState extends State<PortfolioWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    return Scaffold(
        drawer: Drawer(),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(size: 25.0, color: Colors.black),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TabsWeb("Home"),
              TabsWeb("Works"),
              TabsWeb("Blog"),
              TabsWeb("About"),
              TabsWeb("Contact")
            ],
          ),
        ),
        body: ListView(children: [
          //first section
          Container(
            height: heightDevice - 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0)),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: PoppinsBold("Hello I'm", 15),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    PoppinsBold("Jovan Lontos", 55),
                    SizedBox(
                      height: 15,
                    ),
                    Poppins("Flutter developer", 30),
                    SizedBox(
                      height: 15,
                    ),
                    //email
                    Row(
                      children: [
                        Icon(Icons.email, color: Colors.redAccent),
                        SizedBox(
                          width: 10,
                        ),
                        PoppinsBold("jovan123413513@gmail.com", 15)
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //phone
                    Row(
                      children: [
                        Icon(Icons.phone, color: Colors.redAccent),
                        SizedBox(
                          width: 10,
                        ),
                        PoppinsBold("+38766xxxxxx", 15)
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //adress
                    Row(
                      children: [
                        Icon(Icons.location_pin, color: Colors.redAccent),
                        SizedBox(
                          width: 10,
                        ),
                        PoppinsBold("Gojsovac 66", 15),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    )
                  ],
                ),
                CircleAvatar(
                  radius: 104.0,
                  backgroundColor: Colors.greenAccent,
                  child: CircleAvatar(
                    radius: 102.0,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 100.0,
                      backgroundImage:
                          AssetImage("assets/profile_icon_circle.png"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //second section
          Container(
              height: heightDevice / 1.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Card(
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      shadowColor: Colors.greenAccent,
                      child: Image.asset("assets/web.jpg",
                          height: heightDevice / 1.7)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30),
                      PoppinsBold("AboutMe", 30),
                      SizedBox(
                        height: 15,
                      ),
                      Poppins(
                          "Hello! I'm Jovan and i specialize in flutter development.",
                          15),
                      Poppins(
                          "I build beautiful and responsive apps for all platforms",
                          15),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          BorderedTextPoppins("flutter", 15, Colors.redAccent),
                          BorderedTextPoppins(
                              "Firebase", 15, Colors.greenAccent),
                          BorderedTextPoppins("Laravel", 15, Colors.blueAccent),
                          BorderedTextPoppins("MySql", 15, Colors.purpleAccent),
                        ],
                      ),
                    ],
                  ),
                ],
              )),
          //third section
          Container(
            height: heightDevice /1.5,  // You can keep or adjust this height as needed
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,  // Changed to 'start' to avoid spaceEvenly issues
              children: [
                SizedBox(height: 120),
                PoppinsBold("What i do?", 40),
                SizedBox(height: 60),
                Wrap(
                  spacing: 30,  // Horizontal space between cards
                  runSpacing: 30,  // Vertical space between rows of cards
                  children: [
                    // Web Development Card
                    Container(
                      width: MediaQuery.of(context).size.width / 3 - 60,  // Make the card's width relative
                      child: Card(
                        elevation: 30,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        shadowColor: Colors.greenAccent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/webL.png", height: 300, width: double.infinity),
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                              child: PoppinsBold("Web development", 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Firebase Card
                    Container(
                      width: MediaQuery.of(context).size.width / 3 - 60,  // Same adjustment here
                      child: Card(
                        elevation: 30,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        shadowColor: Colors.blueAccent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/firebase.png", height: 300, width: double.infinity),
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                              child: PoppinsBold("Firebase", 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Laravel Card
                    Container(
                      width: MediaQuery.of(context).size.width / 3 - 60,  // Again, width adjustment
                      child: Card(
                        elevation: 30,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        shadowColor: Colors.redAccent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/laravel.png", height: 300, width: double.infinity),
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                              child: PoppinsBold("Laravel", 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          //forth section
          Container(
            height: heightDevice,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PoppinsBold("Contact me", 40)
              ],
            ),
          )
        ]));
  }
}
