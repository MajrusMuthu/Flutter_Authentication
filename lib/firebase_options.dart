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
        return macos;
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
    apiKey: 'AIzaSyAXxjxMMw2bu0pVrMQMlO7Z4rFESnIezVc',
    appId: '1:798293205412:web:2bfd57837823b8e60f6131',
    messagingSenderId: '798293205412',
    projectId: 'authentication-a7752',
    authDomain: 'authentication-a7752.firebaseapp.com',
    storageBucket: 'authentication-a7752.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBC7G-Nq57p7yHaUO0lllw9L_1QRou4-XU',
    appId: '1:798293205412:android:0c3968bacede34c10f6131',
    messagingSenderId: '798293205412',
    projectId: 'authentication-a7752',
    storageBucket: 'authentication-a7752.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB_KpVcdq8YnUFOEHwlnLKgJPFSJd3MDZI',
    appId: '1:798293205412:ios:8b3ed970f91c2f2d0f6131',
    messagingSenderId: '798293205412',
    projectId: 'authentication-a7752',
    storageBucket: 'authentication-a7752.appspot.com',
    iosBundleId: 'com.example.flutterAuthentication',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB_KpVcdq8YnUFOEHwlnLKgJPFSJd3MDZI',
    appId: '1:798293205412:ios:e36b37013ce068360f6131',
    messagingSenderId: '798293205412',
    projectId: 'authentication-a7752',
    storageBucket: 'authentication-a7752.appspot.com',
    iosBundleId: 'com.example.flutterAuthentication.RunnerTests',
  );
}
