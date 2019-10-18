import 'package:flutter/material.dart';

class DrawDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
        child: ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName:
              Text('asuria', style: TextStyle(fontWeight: FontWeight.bold)),
          accountEmail: Text('244960846@qq.com'),
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage('http://liangrr.xyz/lrr/img.jpeg'),
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('http://liangrr.xyz/lrr/biye.jpeg'),
                  colorFilter: ColorFilter.mode(
                      Colors.yellow[100].withOpacity(0.5),
                      BlendMode.hardLight))),
        ),
        ListTile(
          title: Text('XIAOXI', textAlign: TextAlign.right),
          trailing: Icon(Icons.message, color: Colors.black12, size: 22.0),
          onTap: () => Navigator.pop(context),
        )
      ],
    ));
  }
}
