import 'package:get/get.dart';

import '../bindings/changevoice_binding.dart';
import '../ui/pages/changevoice_page/changevoice_page.dart';

class HomeController extends GetxController {
  void goToVoicePage() {
    Get.to(ChangeVoicePage(), binding: ChangeVoiceBinding());
  }
}
