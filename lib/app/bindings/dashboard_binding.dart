import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';
import '../controllers/home_controller.dart';
import '../controllers/statepage_controller.dart';

class DashboardBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<StatePageController>(() => StatePageController());
  }
}
