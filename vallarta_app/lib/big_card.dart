import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vallarta_app/diners_page.dart';

import 'main.dart';

class BigCard extends StatelessWidget {
  const BigCard({
    Key? key,
    required this.pair,
  }) : super(key: key);

  final String pair;

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    return TextButton(
      onPressed: () {
        appState.changeIndex(2);
      },
      child: Text(
        pair,
      ),
    );
  }
}
