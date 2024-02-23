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
    apiKey: 'AIzaSyAWfxjvQsYghmuAY52-rGuvSqS6D-kHvAk',
    appId: '1:872988489206:web:d3eb5d0dd7c63ae7cd83d7',
    messagingSenderId: '872988489206',
    projectId: 'tummybliss-9c73c',
    authDomain: 'tummybliss-9c73c.firebaseapp.com',
    storageBucket: 'tummybliss-9c73c.appspot.com',
    measurementId: 'G-PQR5CLN52C',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyALVKf-n_7ZKN56YWA-iXZUCsBuy37dGnA',
    appId: '1:872988489206:android:123e5e349d310412cd83d7',
    messagingSenderId: '872988489206',
    projectId: 'tummybliss-9c73c',
    storageBucket: 'tummybliss-9c73c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBOTD0Gu8XbtzkhQrfbMeQsCSbCaRqprJs',
    appId: '1:872988489206:ios:148ca18a4303de4ccd83d7',
    messagingSenderId: '872988489206',
    projectId: 'tummybliss-9c73c',
    storageBucket: 'tummybliss-9c73c.appspot.com',
    iosBundleId: 'com.example.tummyblis',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBOTD0Gu8XbtzkhQrfbMeQsCSbCaRqprJs',
    appId: '1:872988489206:ios:7cc836cd14ddaf58cd83d7',
    messagingSenderId: '872988489206',
    projectId: 'tummybliss-9c73c',
    storageBucket: 'tummybliss-9c73c.appspot.com',
    iosBundleId: 'com.example.tummyblis.RunnerTests',
  );
}
