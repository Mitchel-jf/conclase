import 'package:flutter/material.dart';

class APIErrorWidget extends StatelessWidget {
  const APIErrorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('An error occurred'));
  }
}