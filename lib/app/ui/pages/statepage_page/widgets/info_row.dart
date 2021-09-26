import 'package:flutter/cupertino.dart';

import '../../../theme/app_paddings.dart';

class Info extends StatelessWidget {
  final String title, info;
  const Info({
    Key? key,
    required this.info,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding, vertical: defaultPadding / 2),
        child: RichText(
          text: TextSpan(
            style: const TextStyle(
              fontSize: 14.0,
            ),
            children: <TextSpan>[
              TextSpan(
                  text: '$title:',
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(
                text: ' $info',
              )
            ],
          ),
        ));
  }
}
