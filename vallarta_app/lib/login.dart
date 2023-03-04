import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'my_home_page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginPageState();
}

class _LoginPageState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  late String _email;
  late String _password;

  void validateUser() async {
    final form = formKey.currentState;
    UserCredential user;

    if (form!.validate()) {
      form.save();
      try {
        user = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: _email, password: _password);
      } catch (e) {}
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: Center(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Correo',
                      hintText: 'Ingresa un correo de usuario valido',
                    ),
                    validator: (value) =>
                        value!.isEmpty ? 'El correo no puede ir vacio.' : null,
                    onSaved: (value) => _email = value!,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Contrasena',
                      hintText: 'Ingresa tu contrasena',
                    ),
                    validator: (value) => value!.isEmpty
                        ? 'La contrasena no puede ir vacia.'
                        : null,
                    onSaved: (value) => _password = value!,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                ),
                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    onPressed: validateUser,
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
