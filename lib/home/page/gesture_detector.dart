import 'package:flutter/material.dart';
import 'package:flutter/src/scheduler/ticker.dart';
class GestureDetectorPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _GestureDetectorPageState();
  }
}

// ignore: mixin_class_declares_constructor
class _GestureDetectorPageState extends State<GestureDetectorPage> with TickerProvider {
  AnimationController controller;
  CurvedAnimation curve;
  @override
  void initState() {
    super.initState();
    controller = new AnimationController(duration: const Duration(milliseconds: 2000), vsync: this);
    curve = new CurvedAnimation(parent: controller, curve: Curves.easeIn);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Center(
          child: new GestureDetector(
            child: new RotationTransition(
                turns: curve,
                child: new FlutterLogo(
                  size: 200.0,
                )),
            onDoubleTap: () {
              if (controller.isCompleted) {
                controller.reverse();
              } else {
                controller.forward();
              }
            },
          ),
        ));
  }

  @override
  Ticker createTicker(onTick) {
    return new Ticker(
        (Duration elapsed){

        }
    );
  }
}
