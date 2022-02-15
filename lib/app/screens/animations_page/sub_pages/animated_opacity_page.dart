import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AnimatedOpacityPage extends StatefulWidget {
  const AnimatedOpacityPage({Key? key}) : super(key: key);

  @override
  State<AnimatedOpacityPage> createState() => _AnimatedOpacityPageState();
}

class _AnimatedOpacityPageState extends State<AnimatedOpacityPage> {
  double _opacity = 0;

  void animateOpacity() async {
    // await Future.delayed(Duration(seconds: 1));
    setState(() {
      if (_opacity == 0)
        _opacity = 1.0;
      else
        _opacity = 0.0;
    });
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown]);
    animateOpacity();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Opacity'),
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: _opacity,
          duration: Duration(milliseconds: 1000),
          child: CircleAvatar(
            radius: 75,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: animateOpacity,
        child: Icon(Icons.play_arrow),
      ),
    );
  }

  @override
  void dispose() {
    // SystemChrome.setPreferredOrientations(
    //   [DeviceOrientation.portraitUp],
    // );
    super.dispose();
  }
}
