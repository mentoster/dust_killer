import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/changevoice_controller.dart';
import '../../../theme/app_paddings.dart';

class VoiceRecord extends StatelessWidget {
  final ChangeVoiceController c = Get.find();
  final String path;
  final String name;
  final String audioPath;
  final String description;

  VoiceRecord({
    Key? key,
    required this.path,
    required this.name,
    required this.audioPath,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        c.changeName(name);
        c.playAudio(audioPath);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding, vertical: defaultPadding / 2),
        child: Row(
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: Image.asset(
                path,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: defaultPadding),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    Text(description,
                        maxLines: 3,
                        softWrap: false,
                        overflow: TextOverflow.clip,
                        style: Theme.of(context).textTheme.bodyText1),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
