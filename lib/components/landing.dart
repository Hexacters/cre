import 'package:flutter/material.dart';
import '../widgets/index.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(title: 'Home Page'),
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
