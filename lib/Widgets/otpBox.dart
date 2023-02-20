import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../intro.dart';

class OtpBox extends StatefulWidget {
  const OtpBox({super.key});

  @override
  State<OtpBox> createState() => _OtpBoxState();
}

bool isBack = false;

class _OtpBoxState extends State<OtpBox> {
  TextEditingController otpController = TextEditingController();
// ..text = "123456";

// ignore: close_sinks
  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController!.close();

    super.dispose();
  }

  // con_() {
  //   if (isBack = !isBack) {
  //     const OtpBox();
  //   } else {
  //     const LoginBox();
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 269.w,
      height: 180.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromRGBO(255, 191, 104, 1),
          width: 1.sp,
        ),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          InkWell(
            onTap: () {
              setState(
                () {
                  isButtonClicked = !isButtonClicked;
                },
              );
            },
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.w,
                top: 16.h,
              ),
              child: const Icon(
                Icons.arrow_back_rounded,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 56.w,
              top: 18.h,
            ),
            child: Text(
              "OTP has been sent to",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                fontFamily: "ProductSans Regular",
                color: const Color.fromRGBO(181, 181, 181, 1),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 56.w,
              top: 44.h,
            ),
            child: Text(
              "9556020881",
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w400,
                fontFamily: "ProductSans Regular",
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 56.w, top: 85.h),
            child: SizedBox(
              width: 192.w,
              height: 56.h,
              child: PinCodeTextField(
                controller: otpController,
                appContext: context,
                length: 4,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(4),
                  fieldHeight: 46.h,
                  fieldWidth: 37.w,
                  activeColor: const Color.fromRGBO(255, 191, 104, 1),
                  activeFillColor: Colors.black,
                  disabledColor: const Color.fromRGBO(255, 191, 104, 1),
                  borderWidth: 1.sp,
                  inactiveColor: const Color.fromRGBO(255, 191, 104, 1),
                ),
                onChanged: (value) {
                  debugPrint(value);
                  setState(() {
                    currentText = value;
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 166.w,
              top: 150.h,
            ),
            child: Text(
              "Resend OTP?",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                fontFamily: "ProductSans Regular",
                color: const Color.fromRGBO(50, 166, 249, 1),
              ),
            ),
          )
        ],
      ),
    );
  }
}
