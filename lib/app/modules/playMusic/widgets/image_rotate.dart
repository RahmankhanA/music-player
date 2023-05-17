import 'package:flutter/material.dart';
import 'package:music/app/data/constant/assets_icon_constant.dart';

class ImageRotationWidget extends StatefulWidget {
  const ImageRotationWidget({super.key});

  @override
  _ImageRotationWidgetState createState() => _ImageRotationWidgetState();
}

class _ImageRotationWidgetState extends State<ImageRotationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _animation = Tween(begin: 250.0, end: 360.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return RotationTransition(
          turns: AlwaysStoppedAnimation(_animation.value / 360),
          child: Image.asset(IconAssets.trackIcon),
        );
      },
    );
  }
}
