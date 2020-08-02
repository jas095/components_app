import 'package:flutter/material.dart';

import 'package:components_app/src/routes/routes.dart';
import 'package:components_app/src/pages/alert_page.dart';
// import 'package:components_app/src/pages/home_page.dart';
// import 'package:components_app/src/pages/avatar_page.dart';
// import 'package:components_app/src/pages/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: HomePage(),
      initialRoute: 'home',
      routes: getAplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) => AlertPage());
      },
    );
  }
}
