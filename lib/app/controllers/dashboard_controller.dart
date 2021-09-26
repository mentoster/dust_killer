import 'package:get/get.dart';

class DashboardController extends GetxController {
  var tabIndex = 0;
  bool alreadyDefaultPage = false;
  void changeDefaultPage(int index) {
    if (!alreadyDefaultPage) {
      tabIndex = index;
      update();
      alreadyDefaultPage = true;
    }
  }

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
}
