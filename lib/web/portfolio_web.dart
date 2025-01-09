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
          //first page
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
          //second page
          Container(
              height: heightDevice / 1.2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: PoppinsBold("AboutMe", 30),
                  )
                ],
              )),
        ]));
  }
}
