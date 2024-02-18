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
    apiKey: 'AIzaSyCbXaTW7MUbZ-DNmGrql-6R8Ic_YtIQDKM',
    appId: '1:958352063686:web:58ca745e8dde1bca042bc7',
    messagingSenderId: '958352063686',
    projectId: 'ehr-user',
    authDomain: 'ehr-user.firebaseapp.com',
    storageBucket: 'ehr-user.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDtKKFJ3l3YHgPZwjCwEnprAtj1yIibxXo',
    appId: '1:958352063686:android:296d9c4bf640e5df042bc7',
    messagingSenderId: '958352063686',
    projectId: 'ehr-user',
    storageBucket: 'ehr-user.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBx6qef014mPKRWKF96_rXk8ErgqWwuRy8',
    appId: '1:958352063686:ios:e6ea0d69ec250c62042bc7',
    messagingSenderId: '958352063686',
    projectId: 'ehr-user',
    storageBucket: 'ehr-user.appspot.com',
    iosBundleId: 'com.example.ehrEmt',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBx6qef014mPKRWKF96_rXk8ErgqWwuRy8',
    appId: '1:958352063686:ios:10979aef0a762f4b042bc7',
    messagingSenderId: '958352063686',
    projectId: 'ehr-user',
    storageBucket: 'ehr-user.appspot.com',
    iosBundleId: 'com.example.ehrEmt.RunnerTests',
  );
}