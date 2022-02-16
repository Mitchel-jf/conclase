import 'package:conclase/app/routes/route_names.dart';
import 'package:conclase/app/screens/animations_page/animations_page.dart';
import 'package:conclase/app/screens/animations_page/sub_pages/animated_opacity_page.dart';
import 'package:conclase/app/screens/animations_page/sub_pages/fade_transition_page.dart';
import 'package:conclase/app/screens/api_page/api_page.dart';
import 'package:conclase/app/screens/basics_page/basics_page.dart';
import 'package:conclase/app/screens/builder_page/builder_page.dart';
import 'package:conclase/app/screens/home_page/home_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> routes = {
  Routes.homePage: (_) => HomePage(),
  Routes.basicsPage: (_) => BasicsPage(),
  Routes.animationsPage: (_) => AnimationsPage(),
  Routes.animatedOpacityPage: (_) => AnimatedOpacityPage(),
  Routes.fadeTransitionPage: (_) => FadeTransitionPage(),
  Routes.builderPage: (_) => BuilderPage(),
  Routes.apiPage: (_) => APIPage()
};

// typedef WidgetBuilder = Widget Function(BuildContext);