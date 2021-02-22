// import 'package:flutter/material.dart';
// import 'package:get/route_manager.dart';
// import 'package:page1/backend/server.dart';
// import 'package:page1/ui/login_Page.dart';
// import 'package:page1/ui/main_page.dart';
// import 'package:page1/welcam.dart';

// class SplachScreen extends StatefulWidget {
//   @override
//   _SplachScreenState createState() => _SplachScreenState();
// }

// class _SplachScreenState extends State<SplachScreen> {
//   String userId;
//   @override
//   void initState() {
//     super.initState();
//     userId = getUserId();
//     if (userId != null) {
//       fetchSplachData();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     Future.delayed(Duration(seconds: 2)).then((value) {
//       userId == null ? Get.off(Splach()) : Get.off(MainPage());
//     });
//     return Scaffold(
//       body: Center(
//         child: Image.asset('assest/image/splash.jpg'),
//       ),
//     );
//   }
// }
