import 'package:atom/presentaion_layer/home/home_view/home_view.dart';
import 'package:atom/presentaion_layer/onboarding/onboarding_view/onboarding.dart';
import 'package:atom/presentaion_layer/resources/routes_manager.dart';
import 'package:atom/presentaion_layer/resources/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme:getApplicationTheme() ,
        //   ThemeData(
        //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //   useMaterial3: true,
        // ),
        home: const OnboardingScreen(),
        onGenerateRoute: RouteGenerator.getRoute,
      ),
    );
  }
}

