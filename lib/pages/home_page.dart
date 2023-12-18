import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:mobile_ocr/pages/camera_page.dart';

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
            child: Stack(
          children: [
            ListView(
              padding:
                  EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 20),
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
            Positioned(
              bottom: 20,
              right: 25,
              child: Align(
                  child: SizedBox(
                width: 70,
                height: 70,
                child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 4,
                    shadowColor: Color.fromARGB(255, 0, 0, 0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    child: TextButton(
                      onPressed: () async {
                        await availableCameras().then((value) => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => CameraPage(
                                        cameras: value,
                                      )),
                            ));
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Image.asset(
                        'assets/images/camera1.png',
                        width: 40,
                        height: 40,
                      ),
                    )),
              )),
            ),
          ],
        )),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
