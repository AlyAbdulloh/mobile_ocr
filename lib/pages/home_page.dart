import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:get/get.dart';
import 'package:mobile_ocr/pages/camera_page.dart';
import 'package:mobile_ocr/widget/autoSizeText.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget _buildAction() {
    return Row(
      children: [
        ElevatedButton(
            onPressed: () {},
            child: Image.asset(
              'assets/images/edit.png',
              width: 30,
            )),
        SizedBox(
          width: 15,
        ),
        ElevatedButton(
            onPressed: () {},
            child: Image.asset(
              'assets/images/delete.png',
              width: 25,
            )),
      ],
    );
  }

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
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(18),
                          child: Image.asset(
                            'assets/images/profile.png',
                            width: 110,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "2141720039",
                                style: TextStyle(fontSize: 15),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Container(
                                width: 165,
                                height: 20,
                                child: AutoSize(text: "Achmad Aly Abdulloh"),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              _buildAction(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
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
