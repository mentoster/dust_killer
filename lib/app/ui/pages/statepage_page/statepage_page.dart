import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/statepage_controller.dart';

class StatePagePage extends GetView<StatePageController> {
  const StatePagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StatePagePage'),
      ),
      body: const SafeArea(
        child: Text('StatePageController'),
      ),
    );
  }
}
