// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MusicPlayerScreen extends StatefulWidget {

  const MusicPlayerScreen({
    Key? key,

  }) : super(key: key);

  @override
  _MusicPlayerScreenState createState() => _MusicPlayerScreenState();
}

class _MusicPlayerScreenState extends State<MusicPlayerScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )..repeat(reverse: true);
    _animation = Tween<double>(begin: 1, end: 0).animate(_animationController);


  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) {
                return Row(
                    children: List.generate(
                  6,
                  (outerIndex) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        4,
                        (index) {
                          return Row(
                            children: [
                              Container(
                                width: 3,
                                height: 20 *
                                    _animation.value *
                                    (0.5 + index ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color:outerIndex<4 ?Colors.blue:Colors.black,
                                ),
                                // child: const SizedBox(width: 5),
                              ),
                              const SizedBox(width: 5),
                            ],
                          );
                        },
                      ),
                    );
                  },
                ));
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

}
