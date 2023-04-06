import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main.dart';

class DinersPage extends StatelessWidget {
  const DinersPage({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var textController = TextEditingController();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Numero de comensales',
                  hintText: 'Ingresa cuantos comensales seran en la mesa',
                ),
                controller: textController,
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  appState.changeDiners(int.parse(textController.text));
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
