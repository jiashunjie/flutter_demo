import 'package:flutter/material.dart';
import 'package:flutter_web_demo/main/home.dart';
import 'package:flutter_web_demo/main/list.dart';
import 'package:flutter_web_demo/main/mine.dart';

class MainPage extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<MainPage> {
  int _currentIndex = 0;
  List<Widget> _pageList = [
    HomePage(),
    ListContent(),
    GridContent(),
    MinePage()
  ];
  List<BottomNavigationBarItem> _barItem = [
    BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
    BottomNavigationBarItem(icon: Icon(Icons.list), title: Text('List')),
    BottomNavigationBarItem(icon: Icon(Icons.grid_on), title: Text('Grid')),
    BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Mine')),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
          backgroundColor: Colors.pink,
        ),
        body: this._pageList[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: _barItem,
          onTap: (int index) {
            setState(() {
              this._currentIndex = index;
            });
          },
          currentIndex: this._currentIndex,
          fixedColor: Colors.pink,
          selectedFontSize: 12,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
