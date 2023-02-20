import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThreeDots extends StatefulWidget {
  const ThreeDots({super.key});

  @override
  ThreeDotsState createState() => ThreeDotsState();
}

class ThreeDotsState extends State<ThreeDots>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400))
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _currentIndex++;
          if (_currentIndex == 3) {
            _currentIndex = 0;
          }
          _animationController!.reset();
          _animationController!.forward();
        }
      });
    _animationController!.forward();
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController!,
      builder: (context, child) {
        return Padding(
          padding: EdgeInsets.only(
            left: 270.w,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (index) {
              return Opacity(
                opacity: index == _currentIndex ? 1.0 : 0.6,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 34.h),
                  child: const Text(
                    '●',
                    style: TextStyle(
                      color: Color.fromRGBO(12, 110, 84, 0.70),
                    ),
                    textScaleFactor: 2,
                  ),
                ),
              );
            }),
          ),
        );
      },
    );
  }
}
