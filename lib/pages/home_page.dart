import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Home"),
          ),
          backgroundColor: Color(0xFF5FBDFF),
        ),
        body: Container(
          // padding: const EdgeInsets.all(10),
          child: ListView(
            padding: EdgeInsets.all(15),
            children: [
              SizedBox(
                height: 150,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  elevation: 4,
                  shadowColor: Color.fromARGB(255, 0, 0, 0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(),
                ),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
