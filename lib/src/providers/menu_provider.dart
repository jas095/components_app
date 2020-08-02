import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProviders {
  List<dynamic> options = [];

  _MenuProviders() {
    loadData();
  }

  Future<List<dynamic>> loadData() async {
    final respondJson = await rootBundle.loadString('data/menu_opts.json');

    Map valueMap = json.decode(respondJson);
    // print(valueMap);
    options = valueMap['rutas'];

    return options;
  }
}

final menuProvider = new _MenuProviders();
