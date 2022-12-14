// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyC4ogxLi5FpfycT4lRETtGqtZIifu3tZag',
    appId: '1:917218914677:web:f08e9ff6d15d027167233c',
    messagingSenderId: '917218914677',
    projectId: 'login-8b523',
    authDomain: 'login-8b523.firebaseapp.com',
    storageBucket: 'login-8b523.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA2RsiWfEJbmr40lPKLyX4Rn_4-jIGRxTQ',
    appId: '1:917218914677:android:c19a09b0ee94f65167233c',
    messagingSenderId: '917218914677',
    projectId: 'login-8b523',
    storageBucket: 'login-8b523.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA8FyzPeEzixITVrj1LEL5nSvvRfIVDrjk',
    appId: '1:917218914677:ios:66906055a69d1e2467233c',
    messagingSenderId: '917218914677',
    projectId: 'login-8b523',
    storageBucket: 'login-8b523.appspot.com',
    iosClientId: '917218914677-t2vn5nq348ch8eo8rqmfh3hkfm8renkc.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginPage',
  );
}
