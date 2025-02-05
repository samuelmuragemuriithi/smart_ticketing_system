import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB6uCycFe3EAWtZGNL8220mLSIaDTqK8HY",
            authDomain: "smart-ticketing-system-dihet0.firebaseapp.com",
            projectId: "smart-ticketing-system-dihet0",
            storageBucket: "smart-ticketing-system-dihet0.firebasestorage.app",
            messagingSenderId: "454675092704",
            appId: "1:454675092704:web:2aa1935b0cdf200d2f6c85"));
  } else {
    await Firebase.initializeApp();
  }
}
