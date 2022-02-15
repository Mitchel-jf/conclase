import 'package:conclase/app/routes/route_names.dart';
import 'package:conclase/app/screens/animations_page/widgets/animation_item_card.dart';
import 'package:flutter/material.dart';

class AnimationsPage extends StatelessWidget {
  const AnimationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animations'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
        child: ListView(
          children: [
            AnimationItemCard(
              routeName: Routes.animatedOpacityPage,
              title: 'Animated Opacity',
            ),
            AnimationItemCard(
              title: 'Fade Transition',
              routeName: Routes.fadeTransitionPage,
            ),
            // Animated
          ],
        ),
      ),
    );
  }
}
