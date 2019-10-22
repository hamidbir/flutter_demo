import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://resources.ninghao.org/images/say-hello-to-barry.jpg'),
          alignment: Alignment.topCenter,
          // repeat: ImageRepeat.repeatY,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.indigoAccent[400].withOpacity(0.5),
            BlendMode.hardLight,
          ),
        ),
      ),
      child: Row(
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32.0, color: Colors.white),
            padding: EdgeInsets.fromLTRB(10,10,10,10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.red[200],
              border: Border.all(
                color: Colors.green[100],
                width: 3,
              ),
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Colors.red,
                  Colors.green
                ]
              )
              // borderRadius: BorderRadius.circular(10)
            ),
          )
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
      text: TextSpan(
        text: 'liangrr',
        style: TextStyle(
          color: Colors.blue[300],
          fontSize: 20.0
        ),
        children: [
          TextSpan(
            text: '.xyz',
            style: TextStyle(
              color: Colors.red
            )
          )
        ]
      ),
    );
  }
}

class TextDemo extends StatelessWidget {

  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0
  );

  final String _author = '杜埔';
  final String _title = '黄鹤楼';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      'hello $_title 这是啥子哦这是啥子哦这是啥子哦这是',
      textAlign: TextAlign.center,
      style: _textStyle,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}