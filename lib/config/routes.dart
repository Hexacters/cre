import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../components/export_screens.dart';
import '../components/landing.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeMainContent());
      case '/landing':
        return MaterialPageRoute(builder: (_) => LandingScreen());
      case '/container':
        if (args is String) {
          return MaterialPageRoute(
              builder: (_) => ContainerViewScreen(data: args));
        }
        return _errorRoute();
      case '/notification':
        return MaterialPageRoute(builder: (_) => NotificationScreen());
      case '/search':
        return MaterialPageRoute(builder: (_) => SearchMainContent());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('Error'),
        ),
      );
    });
  }
}
