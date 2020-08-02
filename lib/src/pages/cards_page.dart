import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.blueGrey[50],
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.keyboard_backspace),
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: Colors.green,
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTypeOne(),
          SizedBox(
            height: 20.0,
          ),
          _cardTypeTwo(),
        ],
      ),
    );
  }

  Widget _cardTypeOne() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('This is the amazing title!'),
            subtitle: Text(
                'Once upon a time a little amazing subtitle with a large text inside there!!'),
          ),
          Row(
            children: <Widget>[
              FlatButton(onPressed: () {}, child: Text('Cancel')),
              FlatButton(onPressed: () {}, child: Text('Agree')),
            ],
            mainAxisAlignment: MainAxisAlignment.end,
          )
        ],
      ),
    );
  }

  Widget _cardTypeTwo() {
    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://e.rpp-noticias.io/normal/2019/09/17/082208_841632.jpg'),
            fadeInDuration: Duration(milliseconds: 100),
            fit: BoxFit.cover,
          ),
          /*Image(
            image: NetworkImage('https://e.rpp-noticias.io/normal/2019/09/17/082208_841632.jpg'),
            ),*/
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Image via url',
                style: TextStyle(fontSize: 18.0),
              )),
        ],
      ),
    );
  }
}
