import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/home_controller.dart';
import '../../global_widgets/title_image.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> menu = [
      const TitleImage(path: "assets/images/1.jpg"),
      GridView.count(
        shrinkWrap: true,
        primary: true,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("He'd have you all unravel at the"),
            color: Colors.teal[100],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Heed not the rabble'),
            color: Colors.teal[200],
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
