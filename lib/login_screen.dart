import 'package:flutter/material.dart';
import 'package:login_page/service/session.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final emailController = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      //
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: emailController,
          ),
          TextFormField(
            controller: password,
          ),
          ElevatedButton(
              onPressed: () {
                AppSession().firebaseAuth.signInWithEmailAndPassword(
                    email: emailController.text, password: password.text);
              },
              child: Text("Login"))
        ],
      ),
    );
  }
}
