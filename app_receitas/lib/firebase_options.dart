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
    apiKey: 'AIzaSyA5yfBxOOXBvAb77_V4HNIUnO-WmEmicyI',
    appId: '1:613098922700:web:6682ebd689b8ced1d31869',
    messagingSenderId: '613098922700',
    projectId: 'fridgey-3f2b8',
    authDomain: 'fridgey-3f2b8.firebaseapp.com',
    storageBucket: 'fridgey-3f2b8.appspot.com',
    measurementId: 'G-0D7QFZ0ZEN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCFlXCV7rmNiofwiXfQGDhnf-NpmWV9PDg',
    appId: '1:613098922700:android:2bfbb77a03cde257d31869',
    messagingSenderId: '613098922700',
    projectId: 'fridgey-3f2b8',
    storageBucket: 'fridgey-3f2b8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAtLIU3pByr_39TUj8gNvu911cM3iOEHDE',
    appId: '1:613098922700:ios:762cd783cbae8e7dd31869',
    messagingSenderId: '613098922700',
    projectId: 'fridgey-3f2b8',
    storageBucket: 'fridgey-3f2b8.appspot.com',
    iosClientId: '613098922700-mfep2v25vf3gqsauu1kou78ik4ubp2m7.apps.googleusercontent.com',
    iosBundleId: 'com.example.appReceitas',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAtLIU3pByr_39TUj8gNvu911cM3iOEHDE',
    appId: '1:613098922700:ios:762cd783cbae8e7dd31869',
    messagingSenderId: '613098922700',
    projectId: 'fridgey-3f2b8',
    storageBucket: 'fridgey-3f2b8.appspot.com',
    iosClientId: '613098922700-mfep2v25vf3gqsauu1kou78ik4ubp2m7.apps.googleusercontent.com',
    iosBundleId: 'com.example.appReceitas',
  );
}
