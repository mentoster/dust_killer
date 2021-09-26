import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme/app_paddings.dart';

class TitleImage extends StatelessWidget {
  final String path;
  const TitleImage({
    Key? key,
    required this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Center(
          child: SizedBox(width: Get.width / 2, child: Image.asset(path))),
    );
  }
}
