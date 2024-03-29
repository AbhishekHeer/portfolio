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
    apiKey: 'AIzaSyDF84lJKExuQ6IHGssXBQgyFR5Hz8PhVu8',
    appId: '1:835667605691:web:95fc26b1f15c9853f5d19e',
    messagingSenderId: '835667605691',
    projectId: 'portfolio-f54a5',
    authDomain: 'portfolio-f54a5.firebaseapp.com',
    storageBucket: 'portfolio-f54a5.appspot.com',
    measurementId: 'G-37K1TGZVG2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDk6qMpOxHy_mDXdU0RFAwSAJUnvEICI0I',
    appId: '1:835667605691:android:8f725da89658c7c9f5d19e',
    messagingSenderId: '835667605691',
    projectId: 'portfolio-f54a5',
    storageBucket: 'portfolio-f54a5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDari9Lhqd4JDEcoT_01MEsAzdQAj9wkf8',
    appId: '1:835667605691:ios:365e4c61204d7e2cf5d19e',
    messagingSenderId: '835667605691',
    projectId: 'portfolio-f54a5',
    storageBucket: 'portfolio-f54a5.appspot.com',
    iosBundleId: 'com.example.portfolio',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDari9Lhqd4JDEcoT_01MEsAzdQAj9wkf8',
    appId: '1:835667605691:ios:36f3f0d4580f78e5f5d19e',
    messagingSenderId: '835667605691',
    projectId: 'portfolio-f54a5',
    storageBucket: 'portfolio-f54a5.appspot.com',
    iosBundleId: 'com.example.portfolio.RunnerTests',
  );
}
