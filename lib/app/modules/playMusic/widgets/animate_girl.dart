import 'package:flutter/material.dart';
import 'package:music/app/data/constant/assets_image_constant.dart';

class AnimationForGirlWidget extends StatefulWidget {
  const AnimationForGirlWidget({super.key});

  @override
  State<AnimationForGirlWidget> createState() => _AnimationForGirlWidgetState();
}

class _AnimationForGirlWidgetState extends State<AnimationForGirlWidget>
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

    _animation = Tween(begin: 0.0, end: 30.0).animate(
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
        // log(child.toString());
        // log(_animation.value.toString());
        return Positioned(
          // girlzwp (1:147)
          left: 60,
          // left: 44.1408691406,
          top: 400 + _animation.value,
          child: SizedBox(
            width: 278.99,
            height: 315.64,
            child: Stack(
              children: [
                Positioned(
                  // vqU (1:148)
                  left: 1.6647949219,
                  top: 0,
                  child: SizedBox(
                    width: 277.33,
                    height: 303.98,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // autogroupzpjz39Q (RsSobxtWkLjtRqmyoZpJz)
                          margin: const EdgeInsets.fromLTRB(16.66, 0, 0, 41.64),
                          padding: const EdgeInsets.fromLTRB(
                              94.74, 15.41, 98.15, 15.41),
                          height: 249.01,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                               ImageAssets.girl,
                              ),
                            ),
                          ),
                          child: Align(
                            // group283Kci (1:194)
                            alignment: Alignment.topCenter,
                            child: SizedBox(
                              width: 67.78,
                              height: 53.67,
                              child: Image.asset(
                                ImageAssets.headPhone,
                                width: 67.78,
                                height: 53.67,
                              ),
                            ),
                          ),
                        ),
                        //
                        // Container(
                        //   // rectangle129Rfk (1:149)
                        //   width: 6.66,
                        //   height: 13.3,
                        //   decoration: const BoxDecoration(
                        //     color: Color(0xffff5c5c),
                        //     borderRadius: BorderRadius.only(
                        //       topLeft: Radius.circular(3.33128),
                        //       topRight: Radius.circular(3.33128),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 122,
                  top: 70 - _animation.value,
                  child: Container(
                    // rectangle129Rfk (1:149)
                    width: 2.0,
                    height: 30.3-_animation.value,
                    decoration: const BoxDecoration(
                      color: Color(0xffff5c5c),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(3.33128),
                        topRight: Radius.circular(3.33128),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 318 - _animation.value,
                  child: Container(
                    // rectangle129Rfk (1:149)
                    width: 6.66,
                    height: 13.3,
                    decoration: const BoxDecoration(
                      color: Color(0xffff5c5c),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(3.33128),
                        topRight: Radius.circular(3.33128),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // shadowfWE (1:76)
                  // left: 14.1579589844,
                  left: 33-_animation.value,
                  top: 250,
                  child: SizedBox(
                    width: 200 + _animation.value*3,
                    height: 35,
                    child: Image.asset(
                      ImageAssets.mat,
                      // width: 300 ,
                      // height: 35 ,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Positioned(
                  // jRY (1:200)
                  left: 0,
                  top: 64.1290588379 + 20 - _animation.value,
                  child: Align(
                    child: SizedBox(
                      width: 156.57,
                      height: 251.51,
                      child: Image.asset(
                        // _animation.value < 10
                        //     ? 'assets/page-1/images/first_wire.png'
                        //     : _animation.value < 20
                        //         ? 'assets/page-1/images/second_wire.png'
                        //         : 'assets/page-1/images/third_wire.png',
                        ImageAssets.wire,
                        width: 156.57,
                        height: 251.51,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
