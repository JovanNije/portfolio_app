import 'package:flutter/material.dart';
import 'package:protfolio_app/mobile/portfolio_mobile.dart';
import 'package:protfolio_app/web/about_web.dart';
import 'package:protfolio_app/web/portfolio_web.dart';
import 'routes.dart';
import 'package:dynamic_path_url_strategy/dynamic_path_url_strategy.dart';

void main() {
setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => Routes.generateRoute(settings),
      initialRoute: '/',
        );
  }
}
