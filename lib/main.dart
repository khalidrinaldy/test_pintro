import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_pintro/routes/router_app.dart';
import 'package:test_pintro/routes/router_string.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.pages,
      initialRoute: SplashScreenViewRoute,
    );
  }
}