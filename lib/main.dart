import 'package:awesome_chat/app_controller.dart';
import 'package:awesome_chat/routes/app_pages.dart';
import 'package:awesome_chat/ui/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AppController _appController = Get.put(AppController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Awesome Chat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      getPages: appPages,
    );
  }
}
