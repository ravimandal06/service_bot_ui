// ignore_for_file: unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
// import 'package:onboarding_ui/homenav.dart';
// import 'package:onboarding_ui/models/form.dart';
// import 'package:onboarding_ui/screens/Loader.dart';
// import 'package:onboarding_ui/screens/Login.dart';
// import 'package:onboarding_ui/screens/bodySummary.dart';
// import 'package:onboarding_ui/screens/gender.dart';
// import 'package:onboarding_ui/screens/grocery_list.dart';
// import 'package:onboarding_ui/screens/health_conditions.dart';
// import 'package:onboarding_ui/screens/physical.dart';
import 'package:new_version/new_version.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wholesomeeten/screens/queOnboard.dart';

import 'intro.dart';
import 'screens/gender.dart';

void main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   name: "Wholesome Eten",
  //   options: const FirebaseOptions(
  //     apiKey: 'AIzaSyCjSt3eWFZcW2fWljbvC2_B0rdhE9TmRiA',
  //     appId: '1:60439083317:android:b2bf552f828d665727f47c',
  //     messagingSenderId: '60439083317',
  //     projectId: 'wholesomeetencom',
  //     storageBucket: "wholesomeetencom.appspot.com",
  //   ),
  // );
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  //screen orientation
  runApp(const MyApp());
  configLoading();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: child,
        theme: ThemeData(
          // useMaterial3: true,
          // colorSchemeSeed: const Color(0xff6750a4),
          primarySwatch: Colors.grey,
          scaffoldBackgroundColor: Colors.white,
          colorScheme: const ColorScheme(
            primary: Color(0xFFFA9746),
            primaryContainer: Color(0xFFFAAB64),
            secondary: Color(0xFFD32F2F),
            secondaryContainer: Color(0xFF9A0007),
            surface: Color(0xFFDEE2E6),
            background: Color(0xFFF8F9FA),
            error: Color(0xFF96031A),
            onPrimary: Colors.white,
            onSecondary: Colors.white,
            onSurface: Colors.black,
            onBackground: Colors.black,
            onError: Colors.white,
            brightness: Brightness.light,
          ),
        ),
        builder: EasyLoading.init(),
      ),
      child: const Intro(),
    );
  }
}

class Routes {
  static String screen2 = '/screen2';
  static String screen3 = '/screen3';
}

final getPages = [
  GetPage(
    name: Routes.screen2,
    page: () => const OnboardOne(),
  ),

  GetPage(
    name: Routes.screen3,
    page: () => const GenderPage(),
  ),
];

void configLoading() {
  EasyLoading.instance
    ..indicatorType = EasyLoadingIndicatorType.ring
    ..loadingStyle = EasyLoadingStyle.dark
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
}

final data = {
  "data": {
    "gender": "Male",
    "height": 160,
    "weight": 110,
    "age": 23,
    "sleep": "5 - 6 hrs",
    "physicalActivityAtWork": "2.4",
    "physicalActivityAtLeisure": "1.6",
    "dietPref": "Vegan",
    "goalWeight": 60,
    "allergies": ["Mushrooms", "Milk"],
    "breakfast": ["Pesar Dosa", "Oat Meal"],
    "lunchDinner": ["Biryani"],
    "snacks": ["Mixed Nuts"],
    "water": "4 - 7 Glasses",
    "healthConditions": ["Diabeties-1", "less calcium"],
  }
};
