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
    apiKey: 'AIzaSyDg7m-_iAt95yYLOqtPHF0Zs67ndUpXutA',
    appId: '1:349583443724:web:821c9a256ff4f86890eb29',
    messagingSenderId: '349583443724',
    projectId: 'order-app-firebase-auth',
    authDomain: 'order-app-firebase-auth.firebaseapp.com',
    storageBucket: 'order-app-firebase-auth.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCzyRDcB8Ts2bpjcVXezux_ziyvd6JjgTY',
    appId: '1:349583443724:android:1ec84144a68bcfa090eb29',
    messagingSenderId: '349583443724',
    projectId: 'order-app-firebase-auth',
    storageBucket: 'order-app-firebase-auth.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD2phI5FLOUnSQTzUAWpxqjfTI6Z1MD8VQ',
    appId: '1:349583443724:ios:92dd8709e746d71b90eb29',
    messagingSenderId: '349583443724',
    projectId: 'order-app-firebase-auth',
    storageBucket: 'order-app-firebase-auth.appspot.com',
    iosClientId: '349583443724-12n6cem3jhomqqiu59ncjn0sho9386at.apps.googleusercontent.com',
    iosBundleId: 'com.example.foodOrderApp',
  );
}
