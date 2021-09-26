import 'package:get/get.dart';

class ChangeVoiceController extends GetxController {
  var nameNow = "Не установлен".obs;

  void changeName(String newName) {
    nameNow.value = newName;
  }
}
