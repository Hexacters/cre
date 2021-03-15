import 'package:flutter/material.dart';
import '../../../widgets/export_bar.dart';

class ContainerViewScreen extends StatelessWidget {
  final String data;

  ContainerViewScreen({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: header(title: 'Container', selectedIcon: 0),
      bottomNavigationBar: BottomNavigation(index: 1),
      body: new Center(
        child: new Text(data),
      ),
    );
  }
}
