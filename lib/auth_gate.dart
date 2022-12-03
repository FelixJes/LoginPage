import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:get/get.dart';
import 'package:login_page/service/session.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: AppSession().firebaseAuth.authStateChanges(),
      builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
       if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (!snapshot.hasData) {
          return const MaterialApp(
              title: 'Flutter Demo',
              home: SignInScreen(providerConfigs: [
                EmailProviderConfiguration(),
              ]));
        } else {
          return GetMaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: lightColorScheme,
              primarySwatch: Colors.blue,
              textTheme: TextTheme(
                bodyText1: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),
                bodyText2: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 13),
                headline1: GoogleFonts.secularOne(color: Colors.black, fontSize: 35, fontWeight: FontWeight.w700),
                headline3: const TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 16),
              ),
            ),
            home: Container(),
            builder: ((context, child) {
              return LandingPage(child: child ?? Container());
            }),
          );
        }
      },
    );
  }
}
