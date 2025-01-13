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
          Spacer(),
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
                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide(color: Colors.greenAccent)),
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
          Spacer(),
          Container(
            height: heightDevice / 1.5, // Adjust height dynamically if needed
            child: Column(
              mainAxisAlignment: MainAxisAlignment
                  .start, // Align the column items to the start
              children: [
                SizedBox(height: 120),
                PoppinsBold("What I do?", 40),
                SizedBox(height: 60),
                Wrap(
                  spacing: 120, // Horizontal space between cards
                  runSpacing: 30, // Vertical space between rows of cards
                  children: [
                    AnimatedCardWeb(
                      imagePath: "assets/flutter.png",
                      text: "Frontend development",
                      fit: BoxFit.fill,
                      reverse: true,
                      color: Colors.purpleAccent,
                    ),
                    AnimatedCardWeb(
                      imagePath: "assets/firebase.png",
                      text: "Databases",
                      fit: BoxFit.contain,
                      reverse: true,
                      color: Colors.blueAccent,
                    ),
                    AnimatedCardWeb(
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
          //Forth section
          Spacer(),
          Container(
            height: heightDevice, // Adjust as needed for the second section
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Center all items vertically
              children: [
                PoppinsBold("Contact me", 40),
                SizedBox(
                    height:
                        20), // Adjust space between "Contact me" and the row
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Center the row horizontally
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment
                          .start, // Align items to the top of this column
                      children: [
                        InputForm(
                            maxlines: 1,
                            text: "Your full Name:",
                            color: Colors.redAccent),
                        SizedBox(height: 60),
                        InputForm(
                            maxlines: 1,
                            allowedtext: "[0-9]",
                            text: "Your number:",
                            color: Colors.redAccent),
                      ],
                    ),
                    SizedBox(width: 20), // Space between the two columns
                    Column(
                      mainAxisAlignment: MainAxisAlignment
                          .start, // Align items to the top of this column
                      children: [
                        InputForm(
                            maxlines: 1,
                            text: "Your email:",
                            color: Colors.redAccent),
                        SizedBox(height: 60),
                        InputForm(
                            maxlines: 1,
                            text: "Your address:",
                            color: Colors.redAccent),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 60),
                Container(
                  width: 500,
                  child: TextFormField(
                    maxLines: 6,
                    focusNode: FocusNode(canRequestFocus: false),
                    decoration: InputDecoration(
                      hintText: "Enter your message",
                      hintStyle: GoogleFonts.poppins(fontSize: 14),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.redAccent),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.redAccent, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 60),
                Container(
                  height: 70,
                  width: 70,
                  child: FloatingActionButton(
                    backgroundColor: Colors.greenAccent,
                    onPressed: () => {print("Button pressed")},
                    child: Icon(Icons.send_rounded),
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
