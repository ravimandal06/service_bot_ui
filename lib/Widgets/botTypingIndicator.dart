import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BotTyping extends StatefulWidget {
  const BotTyping({super.key});

  @override
  BotTypingState createState() => BotTypingState();
}

class BotTypingState extends State<BotTyping>
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
    return Stack(
      children: 
        [
        Padding(
          padding:  EdgeInsets.only(right: 235.w, top: 6.h),
          child: SizedBox(
            width: 92.w,
            height: 44.h,
            child: Row(
              children: [
                Container(
                  width: 39.w,
                  height: 44.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: const Color.fromRGBO(255, 191, 104, 1),
                  ),
                  child: Image.asset(
                    "defaultAvatar.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 16.w, left: 50.w, bottom: 30.h),
          width: 55.w,
          height: 50.h,
          child: AnimatedBuilder(
            animation: _animationController!,
            builder: (context, child) {
              return Row(
                children: List.generate(3, (index) {
                  return Opacity(
                    opacity: index == _currentIndex ? 1.0 : 0.6,
                    child: const Text(
                      '●',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 191, 104, 1),
                      ),
                      textScaleFactor: 2,
                    ),
                  );
                }),
              );
            },
          ),
        ),
      ],
    );
  }
}
