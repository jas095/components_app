import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name = '';

  String _email = '';

  String _password = '';
  String _date = '';
  TextEditingController _fieldInputDateController = new TextEditingController();

  String _selectItem = 'dog';
  List<String> _itemsPets = [
    'dog',
    'cat',
    'cow',
    'rabbit',
    'duck',
    'hen',
    'horse',
    'squirrel',
    'turtles',
    'alligators',
    'crocodiles',
    'lizards',
    'snakes'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        title: Text('Inputs'),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 13.0, vertical: 23.0),
        children: <Widget>[
          _createInputs(),
          Divider(),
          _createEmail(),
          Divider(),
          _createPassword(),
          Divider(),
          _createDate(context),
          Divider(),
          _createDropDown(),
          Divider(),
          _showFields(),
          Divider(),
        ],
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

  Widget _createInputs() {
    return TextField(
      // autofocus: true,
      cursorColor: Colors.green,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide(color: Colors.green, width: 1.0)),
          counter: Text('Letters ${_name.length}'),
          hintText: 'Complete name',
          labelText: 'Name',
          helperText: 'Just the name',
          icon: Icon(Icons.account_circle),
          suffixIcon: Icon(Icons.all_inclusive)),
      onChanged: (value) {
        setState(() {
          _name = value;
        });
      },
    );
  }

  Widget _createEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
          hintText: 'Email',
          labelText: 'Email',
          icon: Icon(Icons.alternate_email),
          suffixIcon: Icon(Icons.email)),
      onChanged: (value) {
        setState(() {
          _email = value;
        });
      },
    );
  }

  Widget _createPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
          hintText: 'Password',
          labelText: 'Password',
          icon: Icon(Icons.lock_outline),
          suffixIcon: Icon(Icons.lock)),
      onChanged: (value) {
        setState(() {
          _password = value;
        });
      },
    );
  }

  Widget _createDate(BuildContext context) {
    return TextField(
      controller: _fieldInputDateController,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
          hintText: 'Date of birth',
          labelText: 'Date of birth',
          icon: Icon(Icons.perm_contact_calendar),
          suffixIcon: Icon(Icons.calendar_today)),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime(2030),
      locale: Locale('es', 'ES'),
    );

    if (picked != null) {
      setState(() {
        _date = picked.toString();
        _fieldInputDateController.text = _date;
      });
    }
  }

  List<DropdownMenuItem<String>> getOptionDrown() {
    List<DropdownMenuItem<String>> itemList = new List();
    _itemsPets.forEach((element) {
      itemList.add(DropdownMenuItem(
        child: Text(element),
        value: element,
      ));
    });

    return itemList;
  }

  Widget _createDropDown() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(
          width: 30.0,
        ),
        DropdownButton(
          value: _selectItem,
          items: getOptionDrown(),
          onChanged: (opt) {
            setState(() {
              _selectItem = opt;
            });
          },
        ),
      ],
    );
  }

  Widget _showFields() {
    return ListTile(
      title: Text(
          'Your name is: $_name\nYour email is: $_email\nYour password: $_password\nItem Selected $_selectItem'),
    );
  }
}
