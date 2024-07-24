import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAnQpwDyG5_87JIJFu4fkEMBN1uMeGTOzo",
            authDomain: "ixoraescapes.firebaseapp.com",
            projectId: "ixoraescapes",
            storageBucket: "ixoraescapes.appspot.com",
            messagingSenderId: "720943202922",
            appId: "1:720943202922:web:438cf015af534850c58013"));
  } else {
    await Firebase.initializeApp();
  }
}
