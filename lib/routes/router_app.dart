import 'package:get/get.dart';
import 'package:test_pintro/modules/binding/dashboard_binding.dart';
import 'package:test_pintro/modules/screen/dashboard_screen.dart';
import 'package:test_pintro/modules/screen/splash_screen.dart';

import 'router_string.dart';

class AppRoutes {
  static final pages = <GetPage>[
    GetPage(
      name: SplashScreenViewRoute,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: DashboardScreenViewRoute,
      page: () => const DashboardScreen(),
      binding: DashboardBinding(),
    ),
  ];
}
