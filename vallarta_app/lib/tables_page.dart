import 'package:flutter/material.dart';
import 'big_card.dart';

class TablesPage extends StatelessWidget {
  const TablesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          BigCard(pair: "Mesa 1"),
          BigCard(pair: "Mesa 2"),
          BigCard(pair: "Mesa 3"),
          BigCard(pair: "Mesa 4"),
          BigCard(pair: "Mesa 6"),
          BigCard(pair: "Mesa 7"),
          BigCard(pair: "Mesa 8"),
          BigCard(pair: "Mesa 9"),
          BigCard(pair: "Mesa 10"),
          BigCard(pair: "Para llevar"),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
