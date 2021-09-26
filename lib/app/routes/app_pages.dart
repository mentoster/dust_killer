import 'package:get/get.dart';

import '../bindings/dashboard_binding.dart';
import '../ui/pages/dashboard_page/dashboard_page.dart';

part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: Routes.initial,
        page: () => const DashboardPage(
            ),
        binding: DashboardBinding()),

  ];
}
