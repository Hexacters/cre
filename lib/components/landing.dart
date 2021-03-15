import 'package:flutter/material.dart';
import '../widgets/app-bar.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(title: 'Main Page', selectedIcon: 1, context: context),
      body: Center(
        child: ElevatedButton(
          child: Text('Launch screen'),
          onPressed: () {
            Navigator.pushNamed(context, '/welcome');
            // Navigate to the second screen when tapped.
          },
        ),
      ),
    );
  }
}
