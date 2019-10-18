import 'package:flutter/material.dart';
import 'package:hello_word/components/draw_demo.dart';
import 'package:hello_word/components/bottom_navigation_demo.dart';
import './components/listview_demo.dart';
void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,  // 删除debug
      home: Home(),
      theme: ThemeData(
        primaryColor: Colors.yellow
        // highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        // splashColor: Colors.white70
      ),
    );
  }
}

class Home extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        drawer: DrawDemo(),
        appBar: AppBar(
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: 'Navigation',
          //   onPressed: () => debugPrint('导航被按下了'),
          // ),
          title: Text('头部'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('按下搜索'),
            ),
          ],
          bottom: TabBar(
            // 未被选择的颜色,选中的下边框颜色，选择的下边框宽度，高度
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.view_quilt))
            ]
          )
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
            Icon(Icons.view_quilt, size: 128.0, color: Colors.black12)
          ],
        ),
        bottomNavigationBar: BottomNavigationBarDemo(),
      )
    );
  }
}
