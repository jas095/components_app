import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: RaisedButton(
            child: Text('Show an alert!'),
            color: Colors.green,
            textColor: Colors.white,
            shape: StadiumBorder(),
            onPressed: () => _showAlert(context)),
      ),
      backgroundColor: Colors.blueGrey[50],
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.keyboard_backspace),
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: Colors.green,
      ),
    );
  }

  _showAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
          title: Text('Great alert!'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                  'Well done, you do it! \nNow you can write a lot of thing and show an amazing text here.\n'),
              FlutterLogo(
                size: 100.0,
                textColor: Colors.lightGreen,
              )
            ],
          ),
          actions: <Widget>[
            FlatButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Cancel')),
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Okay!'))
          ],
        );
      },
    );
  }
}
