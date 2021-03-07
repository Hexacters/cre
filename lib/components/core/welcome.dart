import 'package:flutter/material.dart';
import '../../widgets/index.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(title: 'Welcome Page'),
      body: Center(
        child: ElevatedButton(
          child: Text('Launch screen'),
          onPressed: () {
            Navigator.pushNamed(context, '/');
            // Navigate to the second screen when tapped.
          },
        ),
      ),
    );
  }
}
