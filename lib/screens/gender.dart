import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:wholesomeeten/intro.dart';

class GenderPage extends StatefulWidget {
  const GenderPage({super.key});

  @override
  State<GenderPage> createState() => _GenderPageState();
}

class _GenderPageState extends State<GenderPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(255, 191, 104, 0.2),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          reverse: true,
          child: Stack(
            children: [
              Image.asset("Bg.png"),
              // Container(
              //   decoration: const BoxDecoration(
              //     color: Color.fromRGBO(255, 191, 104, 0.2),
              //     image: DecorationImage(
              //       fit: BoxFit.cover,
              //       image: AssetImage(
              //         "Bg.png",
              //       ),
              //     ),
              //   ),
              //   child: Column(),
              // ),
              Column(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Get.to(const Intro());
                    },
                    child: Container(
                        margin: EdgeInsets.only(top: 30.h, left: 16.w),
                        width: 32.w,
                        height: 32.h,
                        child: Image.asset("ArrowCircleLeft@4x.png")),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
