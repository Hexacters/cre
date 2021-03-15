import 'package:flutter/material.dart';
import '../../../widgets/export_bar.dart';

class SearchMainContent extends StatefulWidget {
  @override
  _SearchMainContentState createState() => _SearchMainContentState();
}

class _SearchMainContentState extends State<SearchMainContent> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: header(title: 'Search', selectedIcon: 0),
      bottomNavigationBar: BottomNavigation(index: 2),
      body: new Center(
        child: new Text('Search Page Screen'),
      ),
    );
  }
}
