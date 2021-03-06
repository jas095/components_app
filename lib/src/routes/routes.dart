import 'package:components_app/src/pages/listview_page.dart';
import 'package:components_app/src/pages/slider_page.dart';
import 'package:flutter/material.dart';

import 'package:components_app/src/pages/home_page.dart';
import 'package:components_app/src/pages/alert_page.dart';
import 'package:components_app/src/pages/cards_page.dart';
import 'package:components_app/src/pages/input_page.dart';
import 'package:components_app/src/pages/avatar_page.dart';
import 'package:components_app/src/pages/animated_container_page.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    'home': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'inputs': (BuildContext context) => InputPage(),
    'sliders': (BuildContext context) => SliderPage(),
    'lists': (BuildContext context) => ListviewPage(),
  };
}
