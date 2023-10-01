import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../../firebase_options.dart';

class Firebaseconsult {
  void getTime() {
    FirebaseFirestore db = FirebaseFirestore.instance;

    final pessoas = db.collection("pessoas");

    pessoas.where("user", isEqualTo: "Fabiano").get().then((value) {
      for (var docs in value.docs) {
        print(docs.data());
      }
    });
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Firebaseconsult consulta = Firebaseconsult();
  consulta.getTime();
}
