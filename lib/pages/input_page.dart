// import 'package:flutter/material.dart';

// class InputPage extends StatelessWidget {
//   InputPage({super.key});

//   TextEditingController nimController = TextEditingController();
//   TextEditingController namaController = TextEditingController();
//   TextEditingController ttlController = TextEditingController();
//   TextEditingController prodiController = TextEditingController();
//   // TextEditingController alamatController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     nimController.text = 'Nilai Awal';
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Center(
//             child: Text("Edit"),
//           ),
//           backgroundColor: Color(0xFF5FBDFF),
//         ),
//         body: ListView(
//           padding: EdgeInsets.all(15),
//           children: [
//             _buildInputField(nimController, "NIM"),
//             _buildInputField(namaController, "NAMA"),
//             _buildInputField(ttlController, "TTL"),
//             _buildInputField(prodiController, "PRODI"),
//             // _buildInputField(nimController),
//             // _buildInputField(nimController),
//             // _buildInputField(nimController),
//           ],
//         ),
//       ),
//       debugShowCheckedModeBanner: false,
//     );
//   }

//   Widget _buildInputField(TextEditingController controller, String val) {
//     return TextField(
//       controller: controller,
//       decoration: InputDecoration(labelText: val, fillColor: Colors.black12),
//     );
//   }

//   Widget _buildGreyText(String text) {
//     return Text(
//       text,
//       style: TextStyle(color: Colors.grey),
//     );
//   }
// }