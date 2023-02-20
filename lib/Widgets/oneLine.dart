import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OneLineBoxAvatar extends StatelessWidget {
  OneLineBoxAvatar({
    super.key,
    required this.text,
    required this.isAvatar,
  });

  final String text;
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
          height: 56.h,
          child: Container(
            margin: EdgeInsets.only(left: 16.w, right: 24.w),
            child: Padding(
              padding: EdgeInsets.only(top: 18.h),
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
