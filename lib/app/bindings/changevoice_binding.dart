import 'package:get/get.dart';

import '../controllers/changevoice_controller.dart';

class ChangeVoiceBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChangeVoiceController>(() => ChangeVoiceController());
  }
}
