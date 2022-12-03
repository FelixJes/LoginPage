import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:login_page/main.dart';
import 'package:login_page/service/session.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: AppSession().firebaseAuth.authStateChanges(),
      builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          if (snapshot.hasData) {
            return const MyHomePage(
              title: "Logged In",
            );
          } else {
            return SignInScreen(
              styles: const {
       
              },
              providerConfigs: const [
                EmailProviderConfiguration(),
              ],
              headerBuilder: ((context, constraints, shrinkOffset) {
                return Center(
                  child: Text("Loign"),
                );
              }),
            );
          }
        }
        if (snapshot.hasError) {}
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
