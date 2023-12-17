import 'package:flutter/material.dart';
import 'package:mobile_ocr/home_page.dart';
import 'package:mobile_ocr/utils/navigatoin_menu.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late Size mediaSize;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool rememberUser = false;
  @override
  Widget build(BuildContext context) {
    Color myColor = Colors.black;
    mediaSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/bg2.jpg"),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Positioned(top: 80, child: _buildTop()),
            Positioned(bottom: 0, child: _buildBottom(context)),
          ],
        ),
      ),
    );
  }

  Widget _buildTop() {
    return SizedBox(
      width: mediaSize.width,
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.camera_alt_outlined,
            size: 100,
            color: Colors.white,
          ),
          Text(
            "OCR KTM",
            style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 2),
          )
        ],
      ),
    );
  }

  Widget _buildBottom(context) {
    return SizedBox(
      width: mediaSize.width,
      child: Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: _buildForm(context),
        ),
      ),
    );
  }

  Widget _buildForm(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Welcome",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        _buildGreyText("Please login with your information"),
        const SizedBox(
          height: 60,
        ),
        _buildGreyText("Email"),
        _buildInputField(emailController),
        const SizedBox(
          height: 32,
        ),
        _buildGreyText("Password"),
        _buildInputField(passwordController, isPassword: true),
        const SizedBox(
          height: 20,
        ),
        _buildRemember(),
        const SizedBox(
          height: 20,
        ),
        _buildLoginButton(context),
      ],
    );
  }

  Widget _buildGreyText(String text) {
    return Text(
      text,
      style: TextStyle(color: Colors.grey),
    );
  }

  Widget _buildInputField(TextEditingController controller,
      {isPassword = false}) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          suffixIcon:
              isPassword ? Icon(Icons.remove_red_eye) : Icon(Icons.done)),
      obscureText: isPassword,
    );
  }

  Widget _buildLoginButton(context) {
    return ElevatedButton(
        onPressed: () {
          if (emailController.text == "uwongsabar12@gmail.com" &&
              passwordController.text == "12345") {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => NavigationMenu()));
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Please fill input')));
          }
        },
        style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            elevation: 20,
            shadowColor: Colors.black,
            minimumSize: const Size.fromHeight(60)),
        child: const Text("LOGIN"));
  }

  Widget _buildRemember() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
                value: rememberUser,
                onChanged: (value) {
                  setState(() {
                    rememberUser = value!;
                  });
                }),
            _buildGreyText("Remember me")
          ],
        ),
        TextButton(onPressed: () {}, child: _buildGreyText("Forgot password"))
      ],
    );
  }
}
