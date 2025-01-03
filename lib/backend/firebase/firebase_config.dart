import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAoElZS_lDiBI4vk-u-cK-Skzs-Yd6znGc",
            authDomain: "project-sola-ris-a2yh07.firebaseapp.com",
            projectId: "project-sola-ris-a2yh07",
            storageBucket: "project-sola-ris-a2yh07.firebasestorage.app",
            messagingSenderId: "159873471768",
            appId: "1:159873471768:web:9e85b829ecb1e7b7f6ba6d"));
  } else {
    await Firebase.initializeApp();
  }
}
