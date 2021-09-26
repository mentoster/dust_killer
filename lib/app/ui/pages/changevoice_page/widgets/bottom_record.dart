import 'package:flutter/material.dart';

import '../../../theme/app_paddings.dart';

class BottomRecord extends StatelessWidget {
  final String path;
  final String name;
  const BottomRecord({
    Key? key,
    required this.path,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          children: [
            SizedBox(
              width: 100,
              height: 100,
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
                      "Сейчас у вас установлен",
                      style: Theme.of(context).textTheme.button,
                    ),
                    Text(name,
                        maxLines: 3,
                        softWrap: false,
                        overflow: TextOverflow.clip,
                        style: Theme.of(context).textTheme.button),
                  ]),
            )
          ],
        ),
      ],
    );
  }
}
