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
    apiKey: 'AIzaSyAOB5VgR22iIczQ3hl4OFRGVYkqcMvl05Q',
    appId: '1:848433801669:web:1e1fe9fc8fa7e8c40203ac',
    messagingSenderId: '848433801669',
    projectId: 'let-s-chat-62624',
    authDomain: 'let-s-chat-62624.firebaseapp.com',
    databaseURL: 'https://let-s-chat-62624-default-rtdb.firebaseio.com',
    storageBucket: 'let-s-chat-62624.appspot.com',
    measurementId: 'G-MPGY5YXWCM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDbuzbyvLYDxH0_kFxGDCgXH93BBUw5vNU',
    appId: '1:848433801669:android:dfc93e4435466d960203ac',
    messagingSenderId: '848433801669',
    projectId: 'let-s-chat-62624',
    databaseURL: 'https://let-s-chat-62624-default-rtdb.firebaseio.com',
    storageBucket: 'let-s-chat-62624.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAppd45IM5-GIJzxppKA7xZ09GfW2VbSAc',
    appId: '1:848433801669:ios:977e102cf9139ded0203ac',
    messagingSenderId: '848433801669',
    projectId: 'let-s-chat-62624',
    databaseURL: 'https://let-s-chat-62624-default-rtdb.firebaseio.com',
    storageBucket: 'let-s-chat-62624.appspot.com',
    androidClientId: '848433801669-pemqshinpn37gv0o31amhvatngog3hqg.apps.googleusercontent.com',
    iosBundleId: 'com.example.whatsappUiClone',
  );
}
