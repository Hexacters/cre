import 'package:cre/components/core/welcome.dart';
import 'package:cre/components/landing.dart';
import 'package:flutter/widgets.dart';

Map<String, Widget Function(BuildContext)> routes(BuildContext context) {
  return {
    '/': (context) => LandingScreen(),
    '/welcome': (context) => WelcomeScreen(),
  };
}
