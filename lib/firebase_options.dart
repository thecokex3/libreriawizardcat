// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyB44si9cGonly3AGqTbbHbL89gO8iwmBfE',
    appId: '1:738386009183:web:3a3eed824cc4d995670fea',
    messagingSenderId: '738386009183',
    projectId: 'libreriawizardcat',
    authDomain: 'libreriawizardcat.firebaseapp.com',
    storageBucket: 'libreriawizardcat.firebasestorage.app',
    measurementId: 'G-MVGM5FV9E9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDLJ3LGo0tey0-ZmeGOZA-vt-3DzjE8pQo',
    appId: '1:738386009183:android:a0d414bb83aef651670fea',
    messagingSenderId: '738386009183',
    projectId: 'libreriawizardcat',
    storageBucket: 'libreriawizardcat.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCJV5PGZC14UlxypP5B8WeoUtZvue4HaGc',
    appId: '1:738386009183:ios:35f52abdbeae9cff670fea',
    messagingSenderId: '738386009183',
    projectId: 'libreriawizardcat',
    storageBucket: 'libreriawizardcat.firebasestorage.app',
    iosBundleId: 'com.example.gatolib',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCJV5PGZC14UlxypP5B8WeoUtZvue4HaGc',
    appId: '1:738386009183:ios:35f52abdbeae9cff670fea',
    messagingSenderId: '738386009183',
    projectId: 'libreriawizardcat',
    storageBucket: 'libreriawizardcat.firebasestorage.app',
    iosBundleId: 'com.example.gatolib',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyB44si9cGonly3AGqTbbHbL89gO8iwmBfE',
    appId: '1:738386009183:web:60fcdfc92d96a0cb670fea',
    messagingSenderId: '738386009183',
    projectId: 'libreriawizardcat',
    authDomain: 'libreriawizardcat.firebaseapp.com',
    storageBucket: 'libreriawizardcat.firebasestorage.app',
    measurementId: 'G-9HCXGQPBV8',
  );

}