import 'package:flutter/material.dart';
import 'package:mobile_ocr/models/item.dart';
import 'package:mobile_ocr/pages/home_page.dart';
import 'package:mobile_ocr/seeder/item_seeder.dart';

class EditData extends StatefulWidget {
  // const EditData({super.key});
  final dynamic data;
  EditData({Key? key, required this.data}) : super(key: key);

  @override
  State<EditData> createState() => _EditDataState();
}

class _EditDataState extends State<EditData> {
  TextEditingController nimController = TextEditingController();
  TextEditingController namaController = TextEditingController();
  TextEditingController ttlController = TextEditingController();
  TextEditingController prodiController = TextEditingController();
  // TextEditingController alamatController = TextEditingController();

  ItemSeeder _itemSeeder = ItemSeeder();

  @override
  void initState() {
    super.initState();
    // Mengambil nilai dari widget yang diteruskan melalui konstruktor
    nimController.text = widget.data['NIM'];
    namaController.text = widget.data['NAMA'];
    ttlController.text = widget.data['TTL'];
    prodiController.text = widget.data['PRODI'];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Form Data"),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          backgroundColor: Color(0xFF5FBDFF),
        ),
        body: ListView(
          padding: EdgeInsets.all(15),
          children: [
            _buildInputField(nimController, "NIM"),
            _buildInputField(namaController, "NAMA"),
            _buildInputField(ttlController, "TTL"),
            _buildInputField(prodiController, "PRODI"),
            SizedBox(
              height: 40,
            ),
            _buildButton(context, _itemSeeder)
            // _buildInputField(nimController),
            // _buildInputField(nimController),
            // _buildInputField(nimController),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  Widget _buildInputField(TextEditingController controller, String val) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(labelText: val, fillColor: Colors.black12),
    );
  }

  Widget _buildGreyText(String text) {
    return Text(
      text,
      style: TextStyle(color: Colors.grey),
    );
  }

  Widget _buildButton(context, _itemSeeder) {
    return ElevatedButton(
        onPressed: () {
          // if (nimController.text !== "" &&
          //     passwordController.text == "12345") {
          //   Navigator.push(context,
          //       MaterialPageRoute(builder: (context) => NavigationMenu()));
          // } else {
          //   ScaffoldMessenger.of(context).showSnackBar(
          //       const SnackBar(content: Text('Please fill input')));
          // }
          _itemSeeder.addItem(Item(
              nim: nimController.text,
              nama: namaController.text,
              ttl: ttlController.text,
              prodi: prodiController.text));
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        },
        style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            elevation: 20,
            shadowColor: Colors.black,
            minimumSize: const Size.fromHeight(60)),
        child: const Text("SIMPAN"));
  }
}
