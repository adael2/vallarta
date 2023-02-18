import 'package:flutter/material.dart';
import 'package:vallarta_app/favorites_page.dart';

class BigCard extends StatelessWidget {
  const BigCard({
    Key? key,
    required this.pair,
  }) : super(key: key);

  final String pair;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const FavoritesPage()));
      },
      child: Text(
        pair,
      ),
    );
  }
}