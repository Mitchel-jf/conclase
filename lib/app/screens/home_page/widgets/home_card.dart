import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    required this.pageName,
    required this.title,
    Key? key,
  }) : super(key: key);

  final String pageName, title;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, pageName),
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }
}
