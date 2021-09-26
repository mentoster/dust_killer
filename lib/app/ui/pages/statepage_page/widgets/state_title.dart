import 'package:flutter/material.dart';

import '../../../theme/app_paddings.dart';

class StateTitle extends StatelessWidget {
  final String state;
  const StateTitle({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Text(state, style: Theme.of(context).textTheme.headline1),
    );
  }
}
