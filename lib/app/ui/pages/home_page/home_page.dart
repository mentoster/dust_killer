import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/home_controller.dart';
import '../../global_widgets/title_image.dart';
import '../../theme/app_paddings.dart';
import 'widgets/scenario_card.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Widget> menu = [
      const TitleImage(path: "assets/images/1.jpg"),
      GridView.count(
        childAspectRatio: (1.3 / 1),
        shrinkWrap: true,
        primary: true,
        padding: const EdgeInsets.all(defaultPadding),
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        crossAxisCount: 2,
        children: <Widget>[
          ScenCard(
            text: "Вымыть полы на кухне",
            color: Colors.red[50],
            whatDo: () => {},
          ),
          ScenCard(
            text: "Пойти на зарядку",
            color: Colors.green[50],
            whatDo: () => {},
          ),
          ScenCard(
            text: "Мыть коридор",
            color: Colors.grey[200],
            whatDo: () => {},
          ),
          ScenCard(
            text: "Сменить голос",
            color: Colors.blue[50],
            whatDo: () => {},
          ),
        ],
      ),
    ];
    return Scaffold(
        appBar: AppBar(title: const Text('Управление')),
        body: SafeArea(
          child: ListView.builder(
            itemCount: menu.length,
            itemBuilder: (BuildContext context, int i) {
              return menu[i];
            },
          ),
        ));
  }
}
