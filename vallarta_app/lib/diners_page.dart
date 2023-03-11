import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main.dart';

class DinersPage extends StatelessWidget {
  const DinersPage({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Numero de comensales',
                  hintText: 'Ingresa cuantos comensales seran en la mesa',
                ),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.redAccent, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  appState.changeDiners()
                  appState.changeIndex(3);
                },
                child: const Text(
                  'Ir al menu',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
