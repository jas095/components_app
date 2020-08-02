import 'package:flutter/material.dart';

import 'package:components_app/src/providers/menu_provider.dart';
import 'package:components_app/src/utils/icon_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: _list(),
    );
  }

  Widget _list() {
    // print(menuProvider.options);
    // menuProvider.loadData();
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listItems(snapshot.data),
        );
      },
    );

    // return ListView(
    //   children: _listItems(),
    // );
  }

  List<Widget> _listItems(List<dynamic> data) {
    final List<Widget> options = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.amber,
        ),
        onTap: () {},
      );

      options..add(widgetTemp)..add(Divider());
    });

    return options;
  }
}
