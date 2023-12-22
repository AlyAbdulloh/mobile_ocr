import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class PreviewPage extends StatelessWidget {
  const PreviewPage({Key? key, required this.picture, required this.data})
      : super(key: key);

  final XFile picture;
  final dynamic data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Preview Page')),
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Image.file(File(picture.path), fit: BoxFit.cover, width: 250),
          const SizedBox(height: 24),
          Text(picture.name),
          const Spacer(),
          Text("NIM: ${data['NIM']}"),
          Text("NAMA: ${data['NAMA']}"),
          Text("TTL: ${data['TTL']}"),
          Text("PRODI: ${data['PRODI']}"),
        ]),
      ),
    );
  }
}
