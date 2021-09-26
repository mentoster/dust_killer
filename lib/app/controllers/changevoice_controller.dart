import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';

class ChangeVoiceController extends GetxController {
  final AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);
  var nameNow = "Не установлен".obs;

  void changeName(String newName) {
    nameNow.value = newName;
  }

  void playAudio(String path) async {
    await audioPlayer.play(path, isLocal: true);
  }
}
