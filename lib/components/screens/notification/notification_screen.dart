import 'package:flutter/material.dart';
import '../../../widgets/export_bar.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: header(title: 'Notification', selectedIcon: 2, context: context),
      bottomNavigationBar: BottomNavigation(),
      body: new Center(
        child: new Text('Notifications Screen'),
      ),
    );
  }
}
