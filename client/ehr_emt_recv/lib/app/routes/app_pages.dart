import 'package:ehr_emt_recv/app/modules/emergency_view/bindings/emergency_view_binding.dart';
import 'package:ehr_emt_recv/app/modules/emergency_view/views/emergency_view_view.dart';
import 'package:ehr_emt_recv/app/modules/splash.dart';
import 'package:get/get.dart';

import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(name: _Paths.SPLASH, page: () => const SplashScreen()),
    GetPage(
      name: _Paths.EMERGENCY,
      page: () => EmergencyViewView(),
      binding: EmergencyViewBinding(),
    ),
  ];
}
