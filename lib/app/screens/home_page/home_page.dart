import 'package:conclase/app/routes/route_names.dart';
import 'package:conclase/app/screens/home_page/widgets/home_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: GridView.count(
          crossAxisCount: 3,
          children: [
            HomeCard(pageName: Routes.basicsPage, title: 'Basics'),
            HomeCard(pageName: Routes.animationsPage, title: 'Animations'),
            HomeCard(pageName: Routes.builderPage, title: 'Builders'),
            HomeCard(pageName: Routes.apiPage, title: 'APIs')
          ],
        ),
      ),
    );
  }
}
