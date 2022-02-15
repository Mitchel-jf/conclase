import 'package:flutter/material.dart';

class FadeTransitionPage extends StatefulWidget {
  const FadeTransitionPage({Key? key}) : super(key: key);

  @override
  _FadeTransitionPageState createState() => _FadeTransitionPageState();
}

class _FadeTransitionPageState extends State<FadeTransitionPage> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> opacity;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    opacity = Tween<double>(begin: 0, end: 1).animate(controller);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void animateOpacity() => controller.repeat(reverse: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fade Transition'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: animateOpacity,
      ),
      body: Center(
        child: FadeTransition(
          opacity: opacity,
          child: Icon(
            Icons.favorite,
            color: Colors.red,
            size: 75,
          ),
        ),
      ),
    );
  }
}
