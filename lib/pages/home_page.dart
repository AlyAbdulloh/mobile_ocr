import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: Colors.white,
        ),
        body: Center(child: Text('Testtt')),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
