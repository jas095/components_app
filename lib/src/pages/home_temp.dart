import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final option = ['One', 'Two', 'Three', 'Four', 'Five'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components Temp'),
        centerTitle: true,
      ),
      body: ListView(
        children: _createItems(),
      ),
    );
  }

  List<Widget> _createItems() {
    List<Widget> listItems = new List<Widget>();

    for (String opt in option) {
      final itemWidget = ListTile(
        title: Text(opt),
      );

      listItems..add(itemWidget)..add(Divider());
    }

    return listItems;
  }
}
