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
    var heightWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: MyDrawer(),
      backgroundColor: Colors.white,
      appBar: MyAppBar(),
      body: ListView(
        children: [
          // First section
          Container(
            width: heightWidth,
            height: heightDevice,
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize
                  .min, // Ensures Row only takes as much space as needed
              children: [
                // Column containing text information
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
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: PoppinsBold("Hello I'm", 15),
                    ),
                    SizedBox(height: 15),
                    PoppinsBold("Jovan Lontos", 55),
                    SizedBox(height: 15),
                    Poppins("Flutter developer", 30),
                    SizedBox(height: 15),
                    // Email
                    Row(
                      children: [
                        Icon(Icons.email, color: Colors.redAccent),
                        SizedBox(width: 10),
                        PoppinsBold("jovan123413513@gmail.com", 15),
                      ],
                    ),
                    SizedBox(height: 10),
                    // Phone
                    Row(
                      children: [
                        Icon(Icons.phone, color: Colors.redAccent),
                        SizedBox(width: 10),
                        PoppinsBold("+38766xxxxxx", 15),
                      ],
                    ),
                    SizedBox(height: 10),
                    // Address
                    Row(
                      children: [
                        Icon(Icons.location_pin, color: Colors.redAccent),
                        SizedBox(width: 10),
                        PoppinsBold("Gojsovac 66", 15),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                    width:
                        20), // Add some spacing between the text and the avatar
                // CircleAvatar for profile picture
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
                Wrap(
                  spacing: 30,
                  runSpacing: 30,
                  children: [
                    AnimatedCard(
                      imagePath: "assets/flutter.png",
                      text: "Frontend development",
                      fit: BoxFit.fill,
                      reverse: true,
                      color: Colors.blueAccent,
                    ),
                    AnimatedCard(
                      imagePath: "assets/firebase.png",
                      text: "Databases",
                      fit: BoxFit.contain,
                      reverse: true,
                      color: Colors.purpleAccent,
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
          Container(
            padding: EdgeInsets.only(top: 200, bottom: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PoppinsBold("Contact Me", 40),
                SizedBox(height: 20),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InputForm(
                            text: "Your full Name:", color: Colors.greenAccent),
                        SizedBox(height: 60),
                        InputForm(
                            text: "Your number:", color: Colors.greenAccent),
                        SizedBox(height: 60),
                      ],
                    ),
                    SizedBox(width: 60),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InputForm(text: "Your email:", color: Colors.greenAccent),
                        SizedBox(height: 60),
                        InputForm(
                            text: "Your address:", color: Colors.greenAccent),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30),
                SizedBox(
                  width: 500,
                  child: TextFormField(
                    maxLines: 6,
                    focusNode: FocusNode(canRequestFocus: false),
                    decoration: InputDecoration(
                      hintText: "Enter your message",
                      hintStyle: GoogleFonts.poppins(fontSize: 14),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.greenAccent),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.greenAccent, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                MaterialButton(
                  onPressed: () {},
                  elevation: 20.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(10.0)),
                  height: 60.0,
                  minWidth: 300,
                  color: Colors.greenAccent,
                  child: PoppinsBold("Submit", 20.0),
                ),
                SizedBox(height: 35.0)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
