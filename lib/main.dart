import 'package:flutter/material.dart';
import 'package:protfolio_app/mobile/portfolio_mobile.dart';
import 'package:protfolio_app/web/AboutMe.dart';
import 'package:protfolio_app/web/portfolio_web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          '/':(_)=> LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return PortfolioWeb();
            } else {
              return PortfolioMobile();
            }
          }),
          '/about':(_) => AboutMe(),
        },
        );
  }
}
