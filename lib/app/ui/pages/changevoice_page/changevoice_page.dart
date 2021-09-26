import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/changevoice_controller.dart';
import 'widgets/bottom_record.dart';
import 'widgets/voice_record.dart';

class ChangeVoicePage extends GetView<ChangeVoiceController> {
  const ChangeVoicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> records = [
      VoiceRecord(
        path: "assets/images/1.jpg",
        name: "Голос робота убийцы",
        description: "Позвольте своему роботу говорить как он сам хочет",
        audioPath: "assets/sounds/startMax.wav",
      ),
      VoiceRecord(
        path: "assets/images/1.jpg",
        name: "Голос Алёны",
        description: "Позвольте своему роботу говорить как он сам хочет",
        audioPath: "assets/sounds/startAlen.mp3",
      ),
      VoiceRecord(
        path: "assets/images/1.jpg",
        name: "Голос Евгения",
        description: "Позвольте своему роботу говорить как он сам хочет",
        audioPath: "assets/sounds/startEvg.mp3",
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Сменить голос'),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            ListView.builder(
              itemCount: records.length,
              itemBuilder: (BuildContext context, int i) {
                return records[i];
              },
            ),
            Obx(() => BottomRecord(
                  name: controller.nameNow.value,
                  path: "assets/images/1.jpg",
                )),
          ],
        ),
      ),
    );
  }
}
