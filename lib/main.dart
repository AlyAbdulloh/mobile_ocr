import 'package:flutter/material.dart';
import 'package:mobile_ocr/pages/form_page.dart';
import 'package:mobile_ocr/pages/home_page.dart';
import 'package:mobile_ocr/pages/login_page.dart';
import 'package:mobile_ocr/utils/navigatoin_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}
