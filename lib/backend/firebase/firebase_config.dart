import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCkkvHIeogX2668SoKmolNSHhpiF-htpfo",
            authDomain: "fix-flow-a-i-nmfa2m.firebaseapp.com",
            projectId: "fix-flow-a-i-nmfa2m",
            storageBucket: "fix-flow-a-i-nmfa2m.firebasestorage.app",
            messagingSenderId: "444153743386",
            appId: "1:444153743386:web:10fcfb5d2970c1d76be9a3"));
  } else {
    await Firebase.initializeApp();
  }
}
