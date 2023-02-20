import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:wholesomeeten/Widgets/loginBox.dart';
import 'package:wholesomeeten/Widgets/numberBox.dart';
import 'package:wholesomeeten/Widgets/oneLine.dart';
import 'package:wholesomeeten/Widgets/otpBox.dart';
import 'package:wholesomeeten/Widgets/threeLine.dart';
import 'package:wholesomeeten/screens/queOnboard.dart';

import 'Widgets/botTypingIndicator.dart';
import 'Widgets/button.dart';
import 'Widgets/threedots.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

TextEditingController nameController = TextEditingController();
int SelectedTargetWeight = 0;
String targetWeight = '';

bool isButtonClicked = false;
bool isValidName = false;
bool isOtpChecked = false;

//
bool isUserTyping = false;
bool isBotTyping = false;

//
bool selectedindexWeight = false;

final box = GetStorage();

class _IntroState extends State<Intro> {
  // List<String> defMssg = [
  //   "Hi I'm Holly \n Your Wholesome Eten\nBuddy",
  //   "Hi I'm Holly \n Your Wholesome Eten\nBuddy",
  //   "Hi I'm Holly \n Your Wholesome Eten\nBuddy",
  //   "Hi I'm Holly \n Your Wholesome Eten\nBuddy",
  // ];
  // List messages = [
  //   "Hi I'm Holly,\n\nYour Wholesome Eten\nBuddy..",
  //   // "Please enter your Mobile\nNumber or Email.",
  // ];
  // List<String> responses = [];

  //

  //
  @override
  void initState() {
    print(targetWeight);
    super.initState(); //when this route starts, it will execute this code
    Future.delayed(
      const Duration(seconds: 4),
      () {
        //asynchronous delay
        if (mounted) {
          //checks if widget is still active and not disposed
          setState(() {
            //tells the widget builder to rebuild again because ui has updated
            // isUserTyping = false;
            isBotTyping = false;
            //update the variable declare this under your class so its accessible for both your widget build and initState which is located under widget build{}
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(255, 191, 104, 0.2),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          reverse: true,
          // physics: RangeMaintainingScrollPhysics(),

          child: Stack(
            children: [
              // Image.asset(
              //   "Bg.png",
              //   fit: BoxFit.fitHeight,
              // ),
              Container(
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 191, 104, 0.2),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "Bg.png",
                        ))),
                child: Column(
                  children: [
                    if (isOtpChecked == false) ...[
                      SizedBox(height: 296.h),
                    ] else if (isUserTyping == false) ...[
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 0.h),
                      ),
                    ] else ...[
                      SizedBox(height: 136.h),
                    ],
                    Center(
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 82.w),
                                child: SizedBox(
                                  width: 262.w,
                                  height: 166.h,
                                  child: Stack(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 22.h),
                                        child: Container(
                                          width: 39.w,
                                          height: 44.h,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.r),
                                            color: const Color.fromRGBO(
                                                255, 191, 104, 1),
                                          ),
                                          child: Image.asset(
                                            "defaultAvatar.png",
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 46.w),
                                        child: Container(
                                          color: const Color.fromRGBO(
                                              255, 191, 104, 1),
                                          width: 216.w,
                                          height: 102.h,
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                left: 16.w, top: 12.h),
                                            child: Text(
                                              "Hi I’m Holly,\n\nYour Wholesome Eten\nBuddy..",
                                              style: TextStyle(
                                                  fontFamily:
                                                      "ProductSans Medium",
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color.fromRGBO(
                                                      0, 0, 0, 1)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 46.w, top: 110.h),
                                        child: Container(
                                          color: const Color.fromRGBO(
                                              255, 191, 104, 1),
                                          width: 216.w,
                                          height: 56.h,
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                left: 16.w, top: 8.5),
                                            child: Text(
                                              "Please enter your Mobile\nNumber or Email.",
                                              style: TextStyle(
                                                  fontFamily:
                                                      "ProductSans Medium",
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color.fromRGBO(
                                                      0, 0, 0, 1)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              /*   
                           
                           
                                ListTile(
                                leading:
                                Container(
                                  width: 39.w,
                                  height: 44.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    color:
                                        const Color.fromRGBO(255, 191, 104, 1),
                                  ),
                                  child: Image.asset(
                                    "defaultAvatar.png",
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                  title: BubbleNormal1(
                                    text: messages[index],
                                    textStyle: TextStyle(
                                        fontFamily: "ProductSans Medium",
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w400,
                                        color: const Color.fromRGBO(0, 0, 0, 1)),
                                    tail: false,
                                    isSender: false,
                                    color: const Color.fromRGBO(255, 191, 104, 1),
                                    bubbleRadius: BUBBLE_RADIUS_,
                                  ),
                                ),
                           
                           
                           
                                                       */

                              if (isButtonClicked == false) ...[
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 24.w, top: 16.h),
                                  child: const LoginBox(),
                                ),
                              ] else ...[
                                if (isOtpChecked == false) ...[
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 75.w, top: 16.h),
                                    child: const OtpBox(),
                                  ),
                                ] else ...[
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 111.w,
                                      top: 16.h,
                                    ),
                                    child: const NumberBox(),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 16.h, right: 32.5.w),
                                    child: OneLineBoxAvatar(
                                      text: "Welcome, New Friend",
                                      isAvatar: true,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 8.h,
                                      right: 20.w,
                                    ),
                                    child: ThreeLineBox(
                                        isAvatar: false,
                                        // height: 102.h,
                                        text:
                                            "I can help you set and track your health goals, plan your meals, and a lot more..."),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 8.h,
                                      right: 32.5.w,
                                    ),
                                    child: OneLineBoxAvatar(
                                      text: "What brings you here?",
                                      isAvatar: false,
                                    ),
                                  ),
                                  Visibility(
                                    visible: isUserTyping == true,
                                    child: const ThreeDots(),
                                  ),
                                  if (selectedindexWeight == false) ...[
                                    Visibility(
                                      visible: isUserTyping == false,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: 16.h,
                                            left: 64.w,
                                            bottom: 20.h),
                                        child: _targetWeight(),
                                      ),
                                    ),
                                    SizedBox(
                                      width: double.infinity,
                                      height: 200.h,
                                    ),
                                  ] else ...[
                                    // ThreeDots(),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 84.w,
                                        top: 16.h,
                                        right: 16.w,
                                      ),
                                      child: SizedBox(
                                        width: 260.w,
                                        height: 81.h,
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
                                                  fontFamily:
                                                      "ProductSans Regular",
                                                  color: const Color.fromRGBO(
                                                      181, 181, 181, 1),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 260.w,
                                              height: 56.h,
                                              color: Colors.white,

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
                                                      targetWeight,
                                                      style: TextStyle(
                                                        fontSize: 16.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontFamily:
                                                            "ProductSans Regular",
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 18.w,
                                                    height: 18.h,
                                                    child:
                                                        // SvgPicture.asset(
                                                        //   "arrowrightcircle.svg",
                                                        //   fit: BoxFit.contain,
                                                        // ),
                                                        Image.asset(
                                                      "editVector.png",
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 26.w,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    Visibility(
                                      visible: isBotTyping == true,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 16.h),
                                        child: const BotTyping(),
                                      ),
                                    ),

                                    Visibility(
                                      visible: isBotTyping == false,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          top: 28.h,
                                          right: 20.w,
                                        ),
                                        child: ThreeLineBox(
                                            // height: 122.h,
                                            isAvatar: true,
                                            text:
                                                "I can help you with that!\nLet's get to know each\nother.\n\nWhat’s your Name?"),
                                      ),
                                    ),

                                    if (isValidName == false) ...[
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 158.w,
                                            right: 16.w,
                                            top: 18.h),
                                        child: SizedBox(
                                          height: 83.h,
                                          width: 210.w,
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                width: double.infinity,
                                                height: 27.h,
                                                child: Text(
                                                  "Hi Holly I'm",
                                                  style: TextStyle(
                                                    fontSize: 16.sp,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily:
                                                        "ProductSans Regular",
                                                    color: const Color.fromRGBO(
                                                        181, 181, 181, 1),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 210.w,
                                                height: 56.h,
                                                // decoration: BoxDecoration(
                                                //   color: Colors.white,
                                                //     border: Border.all(
                                                //         color: const Color.fromRGBO(
                                                //           255,
                                                //           191,
                                                //           104,
                                                //           1,
                                                //         ),
                                                //         width: 2.w)),
                                                child: TextFormField(
                                                  controller: nameController,
                                                  keyboardType:
                                                      TextInputType.phone,
                                                  // validator: MultiValidator([
                                                  //   RequiredValidator(errorText: "Required"),
                                                  //   EmailValidator(
                                                  //       errorText: "Enter a valid email id"),
                                                  // ]),
                                                  decoration: InputDecoration(
                                                    fillColor: Colors.white,
                                                    filled: true,
                                                    hintText: "Type your name",
                                                    hintStyle: TextStyle(
                                                      fontFamily:
                                                          "ProductSans Regular",
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color:
                                                          const Color.fromRGBO(
                                                              181, 181, 181, 1),
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

                                                    focusedBorder:
                                                        const OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        width: 2,
                                                        color: Color.fromRGBO(
                                                            255, 191, 104, 1),
                                                      ),
                                                    ),

                                                    enabledBorder:
                                                        const OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        width: 2,
                                                        color: Color.fromRGBO(
                                                            255, 191, 104, 1),
                                                      ), //<-- SEE HERE
                                                    ),
                                                  ),
                                                  // controller: loginController.emailController,
                                                  onChanged: (value) {},
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: 13.w),
                                        child: InkWell(
                                          onTap: (() {
                                            print(nameController.text);
                                            setState(() {
                                              // box.write("name", "${nameController.text}");
                                              isValidName = !isValidName;
                                            });
                                          }),
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 224.w, top: 8.h),
                                            child: const NextButton(),
                                          ),
                                        ),
                                      ),
                                    ] else ...[
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 16.h, left: 155.w),
                                        child: Container(
                                          width: 176.w,
                                          height: 56.h,
                                          color: Colors.white,
                                          child: Row(children: [
                                            SizedBox(
                                                width: 96.w,
                                                height: 40.h,
                                                child: Column(
                                                  children: [
                                                    RichText(
                                                        text:
                                                            TextSpan(children: <
                                                                TextSpan>[
                                                      TextSpan(
                                                        text: "Hi Holly,\n",
                                                        style: TextStyle(
                                                          fontSize: 14.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontFamily:
                                                              "ProductSans Regular",
                                                          color: const Color
                                                                  .fromRGBO(
                                                              73, 69, 79, 1),
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text:
                                                            "I am ${nameController.text}",
                                                        style: TextStyle(
                                                          fontSize: 16.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontFamily:
                                                              "ProductSans Medium",
                                                          color: const Color
                                                                  .fromRGBO(
                                                              28, 27, 31, 1),
                                                        ),
                                                      ),
                                                    ])),
                                                  ],
                                                )),
                                            SizedBox(
                                              width: 38.w,
                                            ),
                                            SizedBox(
                                              width: 18.w,
                                              height: 18.h,
                                              child: Image.asset(
                                                "editVector.png",
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ]),
                                        ),
                                      ),
                                      Visibility(
                                        visible: isBotTyping == true,
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 16.h),
                                          child: const BotTyping(),
                                        ),
                                      ),
                                      _bot(
                                        text:
                                            "Nice to Meet you ${nameController.text}",
                                        avatar: true,
                                      ),
                                      const _bot(
                                          text:
                                              "I Have few Questions.\nIt will be done less than\n5 Minutes.",
                                          avatar: false),

                                      ///

                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 16.h, left: 128.w),
                                        child: InkWell(
                                          onTap: () {
                                            Get.to(const OnboardOne());
                                          },
                                          child: Container(
                                            width: 205.w,
                                            height: 56.h,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color.fromRGBO(
                                                    255, 191, 104, 1),
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
                                                    "Yes\nI am Ready for it",
                                                    style: TextStyle(
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
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
                                          ),
                                        ),
                                      ),

                                      ///
                                    ],

                                    //empty-container
                                    SizedBox(
                                      width: double.infinity,
                                      height: 250.h,
                                    ),
                                  ],
                                ],
                              ]
                            ],
                          ),
                        ],
                      ),
                    ),
                    //   },
                    // ),

                    //buttons
                    if (isButtonClicked == false) ...[
                      InkWell(
                        onTap: (() {
                          print("next1");
                          setState(() {
                            box.write("next1", "nextbutton1");
                            isButtonClicked = !isButtonClicked;
                          });
                        }),
                        child: Padding(
                          padding: EdgeInsets.only(left: 224.w, top: 8.h),
                          child: const NextButton(),
                        ),
                      ),
                    ] else ...[
                      Visibility(
                        visible: isOtpChecked == false,
                        child: InkWell(
                          onTap: (() {
                            print("next2");
                            setState(() {
                              box.write("next2", "nextbutton2");
                              isOtpChecked = !isOtpChecked;
                            });
                          }),
                          child: Padding(
                            padding: EdgeInsets.only(left: 224.w, top: 8.h),
                            child: const NextButton(),
                          ),
                        ),
                      )
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _targetWeight() {
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
                        SelectedTargetWeight = 1;
                        selectedindexWeight = true;
                        print(selectedindexWeight);
                        targetWeight = "Loose Weight";
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
                        SelectedTargetWeight = 2;
                        selectedindexWeight = true;
                        targetWeight = "Gain muscle and lose fat";
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
                        SelectedTargetWeight = 3;
                        selectedindexWeight = true;
                        targetWeight = "Gain muscle and lose\nfat is secondary";
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
                        selectedindexWeight = true;

                        SelectedTargetWeight = 4;
                        targetWeight = "Eat healthier without losing weight";
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

class _bot extends StatelessWidget {
  const _bot({
    // required this.top,
    required this.text,
    required this.avatar,
  });

  // final double top;
  final String text;
  final bool avatar;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isBotTyping == false,
      child: Padding(
        padding: EdgeInsets.only(
          top: avatar == false ? 8.h : 28.h,
          right: 20.w,
        ),
        child: ThreeLineBox(
            // height: 122.h,
            isAvatar: avatar,
            text: text),
      ),
    );
  }
}
