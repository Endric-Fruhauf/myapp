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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDL2WDqeo_gOHkZl6BZtInSK21-GUudN4Q',
    appId: '1:51398852641:web:3fa837ba42baab994fa360',
    messagingSenderId: '51398852641',
    projectId: 'n3tassiana',
    authDomain: 'n3tassiana.firebaseapp.com',
    storageBucket: 'n3tassiana.firebasestorage.app',
    measurementId: 'G-B7J406MSX1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCtA8SAOD12XhabqEman1yFNeFTSFV8AIk',
    appId: '1:51398852641:android:b8ce9b0df8507f534fa360',
    messagingSenderId: '51398852641',
    projectId: 'n3tassiana',
    storageBucket: 'n3tassiana.firebasestorage.app',
  );
}
