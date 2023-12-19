import 'package:flutter/material.dart';

class EditData extends StatefulWidget {
  const EditData({super.key});

  @override
  State<EditData> createState() => _EditDataState();
}

class _EditDataState extends State<EditData> {
  TextEditingController nimController = TextEditingController();
  TextEditingController namaController = TextEditingController();
  TextEditingController ttlController = TextEditingController();
  TextEditingController prodiController = TextEditingController();
  TextEditingController alamatController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Edit"),
          ),
          backgroundColor: Color(0xFF5FBDFF),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  Widget _buildInputField(TextEditingController controller) {
    return TextField(
      controller: controller,
    );
  }

  Widget _buildGreyText(String text) {
    return Text(
      text,
      style: TextStyle(color: Colors.grey),
    );
  }
}
