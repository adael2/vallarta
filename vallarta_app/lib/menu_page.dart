import 'package:flutter/material.dart';
import 'big_card.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          BigCard(pair: "Menu"),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
