import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/statepage_controller.dart';
import '../../global_widgets/title_image.dart';
import 'widgets/battery.dart';
import 'widgets/info_row.dart';
import 'widgets/state_title.dart';

class StatePage extends GetView<StatePageController> {
  const StatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Состояние Dust Killer'),
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          TitleImage(path: "assets/images/2.jpg"),
          StateTitle(state: "Готов к уборке"),
          Info(title: "Заряд", info: ""),
          Battery(procent: 0.35),
          // const Info(
          //     title: "Состояние",
          //     info: "уборка/зарядка/сканирование/застрял, помогите 😢"),
          Info(title: "Контейнер с пылью", info: "пустой/заполнен"),
        ],
      )),
    );
  }
}
