import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  final int index;
  const BottomNavigation({Key key, this.index = 0}) : super(key: key);
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  var bottomNavStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          blurRadius: 5,
          color: Colors.grey,
        )
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            child: navItem(Icons.home_outlined,
                isSelected: widget.index == 1 ? true : false),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          GestureDetector(
            child: navItem(Icons.format_list_bulleted,
                isSelected: widget.index == 2 ? true : false),
            onTap: () {
              Navigator.pushNamed(context, '/search');
            },
          ),
          GestureDetector(
            child: navItem(Icons.menu_book_rounded,
                isSelected: widget.index == 3 ? true : false),
            onTap: () {
              onTapped(3);
            },
          ),
          GestureDetector(
            child: navItem(Icons.featured_play_list_outlined,
                isSelected: widget.index == 4 ? true : false),
            onTap: () {
              onTapped(3);
            },
          ),
          GestureDetector(
            child: navItem(Icons.image_outlined,
                isSelected: widget.index == 5 ? true : false),
            onTap: () {
              onTapped(4);
            },
          ),
        ],
      ),
      // decoration: BoxDecoration(color: Colors.white, boxShadow: [
      //   BoxShadow(
      //     color: Colors.grey.withOpacity(0.3),
      //     spreadRadius: 2,
      //     blurRadius: 15,
      //     offset: Offset(0, 5),
      //   ),
      // ]),
      // child: BottomNavigationBar(
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
      //     BottomNavigationBarItem(label: 'Search', icon: Icon(Icons.search)),
      //     BottomNavigationBarItem(label: 'more', icon: Icon(Icons.more)),
      //     BottomNavigationBarItem(label: 'book', icon: Icon(Icons.book)),
      //     BottomNavigationBarItem(label: 'book', icon: Icon(Icons.menu)),
      //   ],
      //   currentIndex: _selectedIndex,
      //   onTap: _onItemTapped,
      //   backgroundColor: Colors.transparent,
      //   type: BottomNavigationBarType.fixed,
      //   selectedFontSize: 12,
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   elevation: 0,
      // ),
    );
  }
}

Container navItem(IconData icon, {isSelected = false}) {
  return Container(
    decoration: BoxDecoration(
        color: isSelected ? Colors.blue : Colors.white,
        shape: BoxShape.circle,
        boxShadow:
            isSelected ? [BoxShadow(color: Colors.grey, blurRadius: 2)] : []),
    height: 50,
    width: 50,
    child: Icon(icon, color: isSelected ? Colors.white : Colors.black),
  );
}
