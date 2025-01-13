import 'package:flutter/material.dart';
import 'web/portfolio_web.dart';
import 'web/about_web.dart';
import 'components.dart';

class Routes{
static Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case '/':
      return MaterialPageRoute(builder: (_) => PortfolioWeb(), settings: settings);
    case '/about':
      return MaterialPageRoute(builder: (_) => AboutMe(), settings: settings);
    default:
      return MaterialPageRoute(builder: (_){
        return Center(
         child: PoppinsBold("Error", 80),
        );
      },);
  }
}
  
}