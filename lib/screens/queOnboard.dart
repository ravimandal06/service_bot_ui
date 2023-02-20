import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:wholesomeeten/screens/gender.dart';

class OnboardOne extends StatefulWidget {
  const OnboardOne({super.key});

  @override
  State<OnboardOne> createState() => _OnboardOneState();
}

class _OnboardOneState extends State<OnboardOne> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      // backgroundColor: Colors.amber,
      body: queOnboard(),
    ));
  }

  startTime() async {
    var duration = const Duration(seconds: 6);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const GenderPage()));
  }
}

class queOnboard extends StatelessWidget {
  const queOnboard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("queOnboardLayer.png"),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 227.h),
              child: Center(
                child: SizedBox(
                    width: 94.w,
                    height: 138.h,
                    child: Image.asset(
                      "queOnboardLogo.png",
                      fit: BoxFit.contain,
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 21.h),
              child: Text(
                "Fetching Questions for you",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: "ProductSans Regular",
                    color: const Color.fromRGBO(50, 50, 50, 1)),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 180.h),
                // width: 280,
                // height: 4.h,
                child: Lottie.asset("lineprg.json", fit: BoxFit.contain))
          ],
        ),
      ],
    );
  }
}

class ProgressIndicatorExample extends StatefulWidget {
  const ProgressIndicatorExample({super.key});

  @override
  State<ProgressIndicatorExample> createState() =>
      _ProgressIndicatorExampleState();
}

class _ProgressIndicatorExampleState extends State<ProgressIndicatorExample>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      /// [AnimationController]s can be created with `vsync: this` because of
      /// [TickerProviderStateMixin].
      vsync: this,
      duration: const Duration(seconds: 15),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: false);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // LinearProgressIndicator(
            //   valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
            //   color: Colors.blue,
            //   value: 12,
            //   semanticsLabel: 'Linear progress indicator',
            // ),

            Lottie.asset("lineprg.json")
          ],
        ),
      ),
    );
  }
}
