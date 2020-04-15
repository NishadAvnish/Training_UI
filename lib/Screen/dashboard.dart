import 'package:flutter/material.dart';
import 'package:training/Screen/exercise_screen.dart';
import 'package:training/Screen/home.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoard createState() => _DashBoard();
}

class _DashBoard extends State<DashBoard> {
  int _currentIndex = 0;
  PageController _pageCoontroller;
  List<Widget> pages = [Home(), ExerciseScreen()];
  @override
  void initState() {
    super.initState();
    _pageCoontroller = PageController(initialPage: _currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    final _size=MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: const Color(0xFFE9E9E9),
      body: Container(
        height: _size.height,
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageCoontroller,
          children: pages,
        ),
      ),
      bottomNavigationBar: _bottomNav(),
    );
  }

  Widget _bottomNav() {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top:Radius.circular(40)),
      clipBehavior: Clip.antiAlias,
      child: BottomNavigationBar(
        backgroundColor: Colors.lightBlue[50],
        currentIndex: _currentIndex,
        iconSize: 30,
        selectedFontSize: 2,
        unselectedFontSize: 2,
        selectedIconTheme: IconThemeData(color: Colors.blue[900]),
        items: [
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: const Icon(Icons.home),
              ),
              title: const Text(
                "Home",
                style: TextStyle(color: Colors.white),
              )),
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: const Icon(Icons.directions_bike),
              ),
              title: const Text(
                "All Exercise",
                style: TextStyle(color: Colors.white),
              )),
        ],
        onTap: (index) {
          if (index != _currentIndex) {
            setState(() {
              _currentIndex = index;
              _pageCoontroller.jumpToPage(_currentIndex);
            });
          }
        },
      ),
    );
  }
}
