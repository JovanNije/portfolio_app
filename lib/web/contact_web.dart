import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protfolio_app/components.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({super.key});

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 500.0,
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(size: 25.0, color: Colors.black),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    "assets/contact_image.jpg",
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),
                title: Row(
                  children: [
                    Spacer(flex: 3),
                    TabsWeb(title: "home", route: '/'),
                    Spacer(),
                    TabsWeb(title: "Works", route: '/works'),
                    Spacer(),
                    TabsWeb(title: "Blog", route: '/blog'),
                    Spacer(),
                    TabsWeb(title: "About", route: '/about'),
                    Spacer(),
                    TabsWeb(
                      title: 'Contact',
                      route: '/contact',
                    )
                  ],
                ),
              ),
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
