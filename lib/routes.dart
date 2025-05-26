import 'package:flutter/material.dart';
import 'package:protfolio_app/web/contact_web.dart';
import 'web/portfolio_web.dart';
import 'web/about_web.dart';
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
      case '/contact':
        return MaterialPageRoute(
            builder: (_) => LayoutBuilder(builder: (context, contrains) {
                  if (contrains.maxWidth > 800) {
                    return ContactWeb();
                  } else
                    return ContactWeb();
                }),
          settings: settings
        );
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
