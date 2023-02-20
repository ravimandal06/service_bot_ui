import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.w,
      height: 56.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromRGBO(255, 191, 104, 1),
          width: 1.sp,
        ),
        color: Colors.white,
      ),
      child: Center(
        child: Row(
          children: [
            SizedBox(
              width: 16.w,
            ),
            Text(
              "Next",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                fontFamily: "ProductSans",
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 26.w,
            ),
            SizedBox(
              width: 24.w,
              height: 24.h,
              child: Image.asset(
                "traillingArrow.png",
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
