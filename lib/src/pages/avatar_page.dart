import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        title: Text('Avatar Page'),
        backgroundColor: Colors.green,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(3.3),
            child: CircleAvatar(
              //child: Text('KL'),
              backgroundColor: Colors.black45,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSbvzWK4FzUYpoKiq0SVpc3kq5ox1x4rPufbg&usqp=CAU'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('KL'),
              backgroundColor: Colors.black45,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage.assetNetwork(
          placeholder: 'assets/jar-loading.gif',
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSbvzWK4FzUYpoKiq0SVpc3kq5ox1x4rPufbg&usqp=CAU',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.keyboard_backspace),
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: Colors.green,
      ),
    );
  }
}
