import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

class Battery extends StatelessWidget {
  final double procent;
  const Battery({
    Key? key,
    required this.procent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Stack(children: [
        LiquidLinearProgressIndicator(
          borderColor: Theme.of(context).colorScheme.primary,
          borderWidth: 1,
          borderRadius: 16,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          valueColor:
              AlwaysStoppedAnimation(Theme.of(context).colorScheme.primary),
          value: procent,
        ),
        Center(child: Text("${procent * 100}%")),
      ]),
    );
  }
}
