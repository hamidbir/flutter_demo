import 'package:bottom_tab_bar/bottom_tab_bar.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomNavigationBarDemoState();
  }
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0;
  String badgeNo1;
  var titles = [ '首页', '附近机构', '应用', '我的' ];
  var icons = [ Icons.home, Icons.details, Icons.apps, Icons.person ];

  void _onTapHandler (int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void initState() {
    super.initState();
    badgeNo1 = '12';
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomTabBar(
      currentIndex: _currentIndex,
      type: BottomTabBarType.fixed,
      fixedColor : Colors.yellow[300],
      onTap: _onTapHandler,
      isAnimation: false,
      badgeColor: Colors.red,
      items: [
        BottomTabBarItem(icon: Icon(icons[0]), title: Text(titles[0]), badgeNo: badgeNo1),
        BottomTabBarItem(icon: Icon(icons[1]), title: Text(titles[1]), badgeNo: '1'),
        BottomTabBarItem(icon: Icon(icons[2]), title: Text(titles[2]), badgeNo: '14'),
        BottomTabBarItem(icon: Icon(icons[3]), title: Text(titles[3]), badgeNo: '33'),
      ],
    );
    // return BottomNavigationBar(
    //   currentIndex: _currentIndex,
    //   backgroundColor: Colors.green,
    //   onTap: _onTapHandler,
    //   selectedItemColor: Colors.yellow[300],
    //   unselectedItemColor: Colors.black26,
    //   items: [
        // BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页'), ),
        // BottomNavigationBarItem(icon: Icon(Icons.details), title: Text('附近机构')),
        // BottomNavigationBarItem(icon: Icon(Icons.apps), title: Text('应用')),
        // BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('我的'))
    //   ],
    // );
  }
}

