import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:page1/splash1.dart';
import 'package:page1/welcam.dart';
import 'package:provider/provider.dart';
import 'backend/mashter_proveder.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ChangeNotifierProvider<MashatelProvider>(
    create: (context) {
      return MashatelProvider();
    },
    child: GetMaterialApp(
        home: MaterialApp(
      home: MyApp(),
    )),
  ));
}

class MyApp extends StatelessWidget {
  // Create the initialization Future outside of `build`:
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Scaffold(
            backgroundColor: Colors.redAccent,
            body: Center(
              child: Icon(
                Icons.error,
                size: 150,
              ),
            ),
          );
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return Splach();
        }
        return Scaffold(
          backgroundColor: Colors.redAccent,
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }




}
