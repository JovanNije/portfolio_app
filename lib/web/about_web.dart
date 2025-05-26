import 'package:flutter/material.dart';
import 'package:protfolio_app/components.dart';
class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:MyAppBar(),
      body: Center(
        child: Container(
          child: PoppinsBold("About me page.", 100)
        ),
      ),
    );
  }
}
