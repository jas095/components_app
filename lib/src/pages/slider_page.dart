import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valueSlider = 100.0;
  bool _blockCheckBox = false;

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
          children: <Widget>[
            _createSlider(),
            _createCheckBox(),
            _createSwitch(),
            Expanded(
              child: _createImage(),
            ),
          ],
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
      max: 400.0,
      onChanged: (_blockCheckBox)
          ? null
          : (element) {
              setState(() {
                _valueSlider = element;
              });
            },
    );
  }

  Widget _createCheckBox() {
    return CheckboxListTile(
        title: Text('Block the slider'),
        value: _blockCheckBox,
        onChanged: (element) {
          setState(() {
            _blockCheckBox = element;
          });
        });

    /* Checkbox(
        value: _blockCheckBox,
        onChanged: (element) {
          setState(() {
            _blockCheckBox = element;
          });
        }); */
  }

  Widget _createSwitch() {
    return SwitchListTile(
        title: Text('Block the slider'),
        value: _blockCheckBox,
        onChanged: (element) {
          setState(() {
            _blockCheckBox = element;
          });
        });
  }

  Widget _createImage() {
    return Image(
      width: _valueSlider,
      fit: BoxFit.contain,
      image: NetworkImage(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRfBklS8YsOxZmtbdLRZ8_bdQNRlRjLe4IZEQ&usqp=CAU'),
    );
  }
}
