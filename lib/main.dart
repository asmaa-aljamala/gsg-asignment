import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:page1/splach.dart';

// import 'package:page1/page1.dart';
// import 'package:page1/page2.dart';
// import 'package:page1/ui/custom_appbar.dart';CusformCusform

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splach(),
    );
  }
}
