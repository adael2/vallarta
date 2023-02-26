import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'big_card.dart';
import 'main.dart';

class GeneratorPage extends StatelessWidget {
  const GeneratorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          BigCard(pair: "Mesa 1"),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}