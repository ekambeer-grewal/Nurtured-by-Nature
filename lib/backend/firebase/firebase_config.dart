import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCEDj1Ty4ylr1w7wIKz-N1Ttx0qddBv7bA",
            authDomain: "nurtured-by-nature.firebaseapp.com",
            projectId: "nurtured-by-nature",
            storageBucket: "nurtured-by-nature.firebasestorage.app",
            messagingSenderId: "942080026785",
            appId: "1:942080026785:web:5f2dd552486c56eb1368e0",
            measurementId: "G-BCGKLGKX3S"));
  } else {
    await Firebase.initializeApp();
  }
}
