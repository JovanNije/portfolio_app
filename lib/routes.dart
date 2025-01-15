import 'package:flutter/material.dart';
import 'web/portfolio_web.dart';
import 'web/about_web.dart';
import 'components.dart';
import 'mobile/portfolio_mobile.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            settings: settings,
            builder: (_) => LayoutBuilder(builder: (context, constraints) {
                  if (constraints.maxWidth > 800) {
                    return PortfolioWeb();
                  } else {
                    return PortfolioMobile();
                  }
                }));
      case '/about':
        return MaterialPageRoute(builder: (_) => AboutMe(), settings: settings);
      default:
        return MaterialPageRoute(
            settings: settings,
            builder: (_) => LayoutBuilder(builder: (context, constraints) {
                  if (constraints.maxWidth > 800) {
                    return PortfolioWeb();
                  } else {
                    return PortfolioMobile();
                  }
                }));
    }
  }
}
