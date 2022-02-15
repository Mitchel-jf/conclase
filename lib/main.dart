import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app/routes/routes.dart';
import 'app/screens/home_page/home_page.dart';
import 'app/screens/unknown_page/unknown_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => MaterialPageRoute(
        builder: routes[settings.name] ?? (_) => UnknownPage(),
      ),
      theme: ThemeData(primarySwatch: Colors.blueGrey
          // canvasColor: Color(0xFFFFFFFF),
          // brightness: Brightness.dark,
          ),
      home: HomePage(),
    );
  }
}
