import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key});

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      endDrawer: MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 400.0,
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(size: 35.0, color: Colors.black),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset("assets/contact_image.jpg", fit: BoxFit.cover),
                ),
              )
            ];
          },
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 30.0),
                PoppinsBold("Contact me", 40.0),
                Container(
                  padding: EdgeInsets.only(bottom: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      Wrap(
                        spacing: 20, // This spacing only applies horizontally (between columns)
                        runSpacing: 20, // Vertical spacing between wrapped rows
                        alignment: WrapAlignment.center,
                        children: [
                          Container(
                            width: 300, // Fixed or adaptive width to maintain alignment
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 30),
                                  child: InputForm(text: "Your full Name:", color: Colors.greenAccent),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 30),
                                  child: InputForm(text: "Your number:", color: Colors.greenAccent),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 300,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 30),
                                  child: InputForm(text: "Your email:", color: Colors.greenAccent),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 30),
                                  child: InputForm(text: "Your address:", color: Colors.greenAccent),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 500,
                        child: Padding(
                          padding: EdgeInsets.only(left:30, right: 30),
                          child: TextFormField(
                            maxLines: 6,
                            focusNode: FocusNode(canRequestFocus: false),
                            decoration: InputDecoration(
                              hintText: "Enter your message",
                              hintStyle: GoogleFonts.poppins(fontSize: 14),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.greenAccent),
                                borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.redAccent, width: 2),
                                borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                              ),
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
          )),
    );
  }
}
