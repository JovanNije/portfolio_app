import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protfolio_app/components.dart';

class PortfolioMobile extends StatefulWidget {
  const PortfolioMobile({super.key});
  @override
  State<PortfolioMobile> createState() => _PortfolioMobileState();
}

class _PortfolioMobileState extends State<PortfolioMobile> {
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
    var withDevice = MediaQuery.of(context).size.width;
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(
            size: 35.0,
            color: Colors.black,
          ),
        ),
        endDrawer: MyDrawer(),
        body: ListView(
          children: [
            //first section
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 117.0,
                    backgroundColor: Colors.greenAccent,
                    child: CircleAvatar(
                      radius: 110.0,
                      backgroundColor: Colors.white,
                      backgroundImage:
                          AssetImage("assets/profile_icon_circle.png."),
                    ),
                  ),
                  SizedBox(height: 25.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0))),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: PoppinsBold("Hello I'm", 15.0),
                      ),
                      PoppinsBold("Jovan Lontos", 40.0),
                      PoppinsBold("Flutter developer", 20.0),
                    ],
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Wrap(
                        direction: Axis.vertical,
                        spacing: 3.0,
                        children: [
                          Icon(
                            Icons.email,
                            color: Colors.lightBlue,
                          ),
                          Icon(Icons.call, color: Colors.green),
                          Icon(
                            Icons.location_pin,
                            color: Colors.red,
                          )
                        ],
                      ),
                      SizedBox(width: 40),
                      Wrap(
                        direction: Axis.vertical,
                        spacing: 9.0,
                        children: [
                          PoppinsBold("jovan123413513@gmail.com", 15.0),
                          PoppinsBold("+387 66 119 758", 15.0),
                          PoppinsBold("Gojsovac 66 Bijeljina", 15.0),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 90.0),
            //About me, second section
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PoppinsBold("About me", 35.0),
                  Poppins(
                      "Hello! I'm Jovan Lontos and i specialize in flutter development",
                      15),
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
            SizedBox(height: 60.0),
            //Third section What I do?
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PoppinsBold("What I do?", 35.0),
                AnimatedCard(
                  imagePath: "assets/flutter.png",
                  text: "Frontend Development",
                  fit: BoxFit.fill,
                  reverse: true,
                  color: Colors.blueAccent,
                  height: 300,
                ),
                SizedBox(height: 35.0),
                AnimatedCard(
                  imagePath: "assets/firebase.png",
                  text: "Database",
                  fit: BoxFit.fill,
                  reverse: true,
                  color: Colors.purpleAccent,
                  height: 300,
                ),
                SizedBox(height: 35.0),
                AnimatedCard(
                  imagePath: "assets/laravel.png",
                  text: "Backend development",
                  fit: BoxFit.fitHeight,
                  reverse: true,
                  color: Colors.redAccent,
                  height: 300,
                ),
                SizedBox(height: 60.0),
                //Contact forth section
                Wrap(
                  runSpacing: 20.0,
                  spacing: 20.0,
                  alignment: WrapAlignment.center,
                  children: [
                    PoppinsBold("Contact me", 35.0),
                    InputForm(
                        text: "First name",
                        width: withDevice / 1.4,
                        color: Colors.redAccent),
                    InputForm(
                        text: "Last name",
                        width: withDevice / 1.4,
                        color: Colors.redAccent),
                    InputForm(
                        text: "Email",
                        width: withDevice / 1.4,
                        color: Colors.redAccent),
                    InputForm(
                        text: "Phone number",
                        width: withDevice / 1.4,
                        color: Colors.redAccent),
                    InputForm(
                        text: "Message",
                        width: withDevice / 1.4,
                        color: Colors.redAccent,
                        maxlines: 5),
                    MaterialButton(
                      onPressed: () {},
                      elevation: 20.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(10.0)),
                      height: 60.0,
                      minWidth: withDevice / 2.2,
                      color: Colors.greenAccent,
                      child: PoppinsBold("Submit", 20.0),
                    ),
                    SizedBox(height: 35.0)
                  ],
                ),
                SizedBox(height: 20.0)
              ],
            )
          ],
        ));
  }
}
