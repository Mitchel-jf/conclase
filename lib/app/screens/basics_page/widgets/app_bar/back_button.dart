import 'package:flutter/material.dart';

class BasicsAppBarBackButton extends StatelessWidget {
  const BasicsAppBarBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () => Navigator.pop(context),
        child: Text('Back'),
        style: TextButton.styleFrom(primary: Colors.black),
      ),
    );
  }
}