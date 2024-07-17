import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB_q1ggMNB-mPiSPlriXHqtCLftG28hERY",
            authDomain: "nota-de-falecimento.firebaseapp.com",
            projectId: "nota-de-falecimento",
            storageBucket: "nota-de-falecimento.appspot.com",
            messagingSenderId: "663896034114",
            appId: "1:663896034114:web:b58f23cdebd4ad58f516db",
            measurementId: "G-7VNVW2MKXT"));
  } else {
    await Firebase.initializeApp();
  }
}
