import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScenCard extends StatelessWidget {
  final String text;
  final Color? color;
  final Function() whatDo;
  const ScenCard({
    Key? key,
    required this.text,
    required this.color,
    required this.whatDo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color!,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        onTap: whatDo,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  Icon(
                    CupertinoIcons.play_fill,
                    size: 40,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ],
              ),
              Text(
                text,
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
