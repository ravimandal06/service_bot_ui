import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../intro.dart';

class TargetWeight extends StatefulWidget {
  const TargetWeight(
    this.selectedindexWeight, {
    super.key,
  });
  final bool selectedindexWeight;
  @override
  State<TargetWeight> createState() => _TargetWeightState();
}

String targetWeight = "";

List<String> targetWeight_ = [
  "Loose Weight",
  "Gain muscle and lose fat",
  "Gain muscle and lose\nfat is secondary",
  "Eat healthier without losing weight",
];

class _TargetWeightState extends State<TargetWeight> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260.w,
      height: 259.h,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 25.h,
            child: Text(
              "i want to",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                fontFamily: "ProductSans Regular",
                color: const Color.fromRGBO(181, 181, 181, 1),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            // height: 227.h,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                  color: const Color.fromRGBO(255, 191, 104, 1), width: 1.w),
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    setState(
                      () {
                        box.write("looseWeight", "Loose Weight");
                        print(
                          box.read("looseWeight"),
                        );
                        selectedTargetWeight = 1;
                        widget.selectedindexWeight == true;
                        print(widget.selectedindexWeight);
                        targetWeight == "Loose Weight";
                      },
                    );
                  },
                  child: SizedBox(
                    width: 260.w,
                    height: 57.h,

                    // color: Colors.amber,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 16.w,
                        ),
                        SizedBox(
                          width: 180.w,
                          child: Text(
                            "Loose Weight",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: "ProductSans Regular",
                              color: Colors.black,
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 24.w,
                          height: 24.h,
                          child:
                              // SvgPicture.asset(
                              //   "arrowrightcircle.svg",
                              //   fit: BoxFit.contain,
                              // ),
                              Image.asset(
                            "traillingArrow.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          width: 26.w,
                        ),

                        // Image.asset("arrowcircleright.svg"),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: const Color.fromRGBO(202, 196, 208, 1),
                  height: 1.h,
                ),
                InkWell(
                  onTap: () {
                    setState(
                      () {
                        box.write(
                            "gainMuscleAndLoseFat", "Gain muscle and lose fat");
                        print(
                          box.read("gainMuscleAndLoseFat"),
                        );
                        selectedTargetWeight = 2;
                        widget.selectedindexWeight == true;
                        targetWeight == "Gain muscle and lose fat";
                      },
                    );
                  },
                  child: SizedBox(
                    width: 260.w,
                    height: 57.h,

                    // color: Colors.amber,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 16.w,
                        ),
                        SizedBox(
                          width: 180.w,
                          child: Text(
                            "Gain muscle and lose fat",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: "ProductSans Regular",
                              color: Colors.black,
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 24.w,
                          height: 24.h,
                          child:
                              // SvgPicture.asset(
                              //   "arrowrightcircle.svg",
                              //   fit: BoxFit.contain,
                              // ),
                              Image.asset(
                            "traillingArrow.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          width: 26.w,
                        ),

                        // Image.asset("arrowcircleright.svg"),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: const Color.fromRGBO(202, 196, 208, 1),
                  height: 1.h,
                ),
                InkWell(
                  onTap: () {
                    setState(
                      () {
                        box.write("gainMuscleAndLoseFatIsSec",
                            "Gain muscle and lose\nfat is secondary");
                        print(
                          box.read("gainMuscleAndLoseFatIsSec"),
                        );
                        selectedTargetWeight = 3;
                        widget.selectedindexWeight == true;
                        targetWeight ==
                            "Gain muscle and lose\nfat is secondary";
                      },
                    );
                  },
                  child: SizedBox(
                    width: 260.w,
                    height: 57.h,

                    // color: Colors.amber,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 16.w,
                        ),
                        SizedBox(
                          width: 180.w,
                          child: Text(
                            "Gain muscle and lose\nfat is secondary",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: "ProductSans Regular",
                              color: Colors.black,
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 24.w,
                          height: 24.h,
                          child:
                              // SvgPicture.asset(
                              //   "arrowrightcircle.svg",
                              //   fit: BoxFit.contain,
                              // ),
                              Image.asset(
                            "traillingArrow.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          width: 26.w,
                        ),

                        // Image.asset("arrowcircleright.svg"),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: const Color.fromRGBO(202, 196, 208, 1),
                  height: 1.h,
                ),
                InkWell(
                  onTap: () {
                    setState(
                      () {
                        box.write("eatHealthier",
                            "Eat healthier without\nlosing weight");
                        print(
                          box.read("eatHealthier"),
                        );
                        widget.selectedindexWeight == true;

                        selectedTargetWeight = 4;
                        targetWeight == "Eat healthier without losing weight";
                      },
                    );
                  },
                  child: SizedBox(
                    width: 260.w,
                    height: 57.h,

                    // color: Colors.amber,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 16.w,
                        ),
                        SizedBox(
                          width: 180.w,
                          child: Text(
                            "Eat healthier without\nlosing weight",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: "ProductSans Regular",
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 24.w,
                          height: 24.h,
                          child:
                              // SvgPicture.asset(
                              //   "arrowrightcircle.svg",
                              //   fit: BoxFit.contain,
                              // ),
                              Image.asset(
                            "traillingArrow.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          width: 26.w,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
