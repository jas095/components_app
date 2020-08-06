import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valueSlider = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        title: Text('Sliders'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[_createSlider(), Expanded(child: _createImage())],
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

  Widget _createSlider() {
    return Slider(
      activeColor: Colors.greenAccent,
      label: 'Image size',
      // divisions: 25,
      value: _valueSlider,
      min: 10.0,
      max: 500.0,
      onChanged: (element) {
        setState(() {
          _valueSlider = element;
        });
      },
    );
  }

  Widget _createImage() {
    return Image(
      width: _valueSlider,
      fit: BoxFit.contain,
      image: NetworkImage(
          'https://i.pinimg.com/originals/ce/1d/ca/ce1dca317d57ca309ff63e50967e4898.jpg'),
    );
  }
}
