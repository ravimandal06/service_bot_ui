import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NumberBox extends StatefulWidget {
  const NumberBox({super.key});

  @override
  State<NumberBox> createState() => _NumberBoxState();
}

class _NumberBoxState extends State<NumberBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 233.w,
      height: 72.h,
      color: Colors.white,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 16.w,
              top: 14.5.h,
            ),
            child: Text(
              "Logged in Via",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                fontFamily: "ProductSans Regular",
                color: const Color.fromRGBO(181, 181, 181, 1),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w, top: 32.5),
            child: Text(
              "94500**3456",
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w400,
                fontFamily: "ProductSans Regular",
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 188.w, top: 27.h),
            child: SizedBox(
              width: 18.w,
              height: 18.h,
              child: Image.asset(
                "editVector.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
