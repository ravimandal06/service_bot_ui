import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginBox extends StatefulWidget {
  const LoginBox({super.key});

  @override
  State<LoginBox> createState() => _LoginBoxState();
}

TextEditingController phoneController = TextEditingController();

class _LoginBoxState extends State<LoginBox> {
  final bool isEmail = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320.w,
      height: 180.h,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color.fromRGBO(255, 191, 104, 1),
          width: 1.sp,
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 120.w, left: 129.w, top: 17.h),
            child: Text(
              "Login Via",
              style: TextStyle(
                fontFamily: "ProductSans Medium",
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(181, 181, 181, 1),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 83.w, top: 49.h),
            child: Row(
              children: [
                Container(
                  width: 77.w,
                  height: 32.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100.r),
                      topLeft: Radius.circular(100.r),
                    ),
                    color: const Color.fromRGBO(255, 191, 104, 1),
                    border: Border.all(
                        color: const Color.fromRGBO(121, 116, 126, 1),
                        width: 1.w),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 7.56.w,
                        ),
                        Icon(
                          Icons.check_rounded,
                          color: const Color.fromRGBO(29, 25, 43, 1),
                          size: 15.sp,
                        ),
                        SizedBox(
                          width: 5.25.w,
                        ),
                        Text(
                          "Mobile",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: "ProductSans Medium",
                            color: const Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 77.w,
                  height: 32.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(100.r),
                      topRight: Radius.circular(100.r),
                    ),
                    color: Colors.white,
                    border: Border.all(
                        color: const Color.fromRGBO(121, 116, 126, 1),
                        width: 1.w),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 7.56.w,
                        ),
                        Visibility(
                          visible: isEmail,
                          child: Icon(
                            Icons.check_rounded,
                            color: const Color.fromRGBO(29, 25, 43, 1),
                            size: 15.sp,
                          ),
                        ),
                        SizedBox(
                          width: 10.25.w,
                        ),
                        Text(
                          "Email",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: "ProductSans Medium",
                            color: const Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 26.w, top: 120.h),
            child: Container(
              width: 74.w,
              height: 19.h,
              color: Colors.white,
              child: Row(
                children: [
                  Image.asset("indiaflag.png"),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "+91",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: "ProductSans Medium",
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Icon(
                    CupertinoIcons.chevron_down,
                    size: 13.w,
                    color: Colors.black,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 103.w,
              top: 100.h,
            ),
            child: SizedBox(
              width: 191.w,
              height: 56.h,
              child: TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                // validator: MultiValidator([
                //   RequiredValidator(errorText: "Required"),
                //   EmailValidator(
                //       errorText: "Enter a valid email id"),
                // ]),
                decoration: InputDecoration(
                  hintText: "Mobile No",
                  hintStyle: TextStyle(
                    fontFamily: "ProductSans Medium",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(181, 181, 181, 1),
                  ),
                  // label: Text(
                  //   "Mobile No",
                  //   style: TextStyle(
                  //     fontFamily: "Roboto Regular",
                  //     fontSize: 16.sp,
                  //     fontWeight: FontWeight.w400,
                  //     color: Colors.black.withOpacity(0.5),
                  //   ),
                  // ),

                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 3,
                      color: Color.fromRGBO(255, 191, 104, 1),
                    ),
                  ),

                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 3,
                      color: Color.fromRGBO(121, 116, 126, 1),
                    ), //<-- SEE HERE
                  ),
                ),
                // controller: loginController.emailController,
                onChanged: (value) {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
