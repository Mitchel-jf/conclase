import 'package:flutter/material.dart';

class AnimationItemCard extends StatelessWidget {
  const AnimationItemCard({
    Key? key,
    required this.title,
    required this.routeName,
  }) : super(key: key);

  final String title, routeName;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        onTap: () => Navigator.pushNamed(context, routeName),
      ),
    );
  }
}
