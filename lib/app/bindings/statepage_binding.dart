import 'package:get/get.dart';

import '../controllers/statepage_controller.dart';

class StatePageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StatePageController>(() => StatePageController());
  }
}
