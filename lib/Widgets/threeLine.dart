import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThreeLineBox extends StatelessWidget {
  ThreeLineBox({
    super.key,
    required this.text,
    required this.isAvatar,
    // required this.height,
  });

  final String text;

  // final double height;
  bool isAvatar;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (isAvatar == true) ...[
          SizedBox(
            width: 16.w,
          ),
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
          SizedBox(
            width: 7.w,
          ),
        ] else ...[
          SizedBox(
            width: 62.w,
          )
        ],
        Container(
          color: const Color.fromRGBO(255, 191, 104, 1),
          width: 216.w,
          // height: height,
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: 16.w,
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 12.h, bottom: 12.h),
              child: Text(
                text,
                style: TextStyle(
                    fontFamily: "ProductSans Medium",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(0, 0, 0, 1)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
