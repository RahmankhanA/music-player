import 'package:flutter/material.dart';
import 'package:music/app/data/constant/assets_image_constant.dart';

class BackgroundImageAnimationWidget extends StatefulWidget {
  const BackgroundImageAnimationWidget({super.key});

  @override
  State<BackgroundImageAnimationWidget> createState() =>
      _BackgroundImageAnimationWidgetState();
}

class _BackgroundImageAnimationWidgetState
    extends State<BackgroundImageAnimationWidget>
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

    _animation = Tween(begin: 1.0, end: 0.0).animate(
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
        return Positioned(

          bottom: 280+_animation.value,
          child: Align(
            child: SizedBox(

              width: MediaQuery.of(context).size.width,
              // height: 500.84,
              child: AnimatedSwitcher(
                duration: const Duration(seconds: 1),
                switchInCurve: Curves.bounceIn,
                switchOutCurve: Curves.bounceOut ,
                child: Image.asset(
                  _animation.value > 0.5
                      ? ImageAssets.backgroundColor1
                      : ImageAssets.backgroundColor2,
                  // 'assets/page-1/images/bg-color.png',
                  width: MediaQuery.of(context).size.width,
                  // height: 900.84,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
