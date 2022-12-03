import 'package:firebase_auth/firebase_auth.dart';

class AppSession {
  static final AppSession _instance = AppSession._internal();

  final firebaseAuth = FirebaseAuth.instance;
  User? get currentUser => firebaseAuth.currentUser;

  Future<UserCredential> signInWithEmailAndPassword(
      {required String email, required String password}) {
    return firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  Future<void> signOut() => firebaseAuth.signOut();

  // using a factory is important
  // because it promises to return _an_ object of this type
  // but it doesn't promise to make a new one.
  factory AppSession() {
    return _instance;
  }

  // This named constructor is the "real" constructor
  // It'll be called exactly once, by the static property assignment above
  // it's also private, so it can only be called in this class
  AppSession._internal() {
    firebaseAuth.authStateChanges().listen((event) {
      if (event == null) {
        print("Logged out");
      } else {
        print("Logged in");
      }
    });
  }

  // rest of class as normal, for example:

}
