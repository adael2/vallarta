import 'package:flutter/material.dart';
import 'big_card.dart';

class CommandsPage extends StatelessWidget {
  const CommandsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          BigCard(pair: "Comandas"),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
