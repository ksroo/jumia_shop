import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jumia_shop/helper/binding.dart';
import 'package:jumia_shop/view/auth/login_screen.dart';
import 'package:get/get.dart';
import 'package:jumia_shop/view/control_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: Binding(),
      home: Scaffold(
        body: ControlView(),
      ),
      theme: ThemeData(
        fontFamily: 'SourceSans',
      ),
    );
  }
}
