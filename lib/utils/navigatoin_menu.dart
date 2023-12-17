import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_ocr/pages/home_page.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
            backgroundColor: Color(0xFF5FBDFF),
            height: 80,
            elevation: 1,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            destinations: [
              NavigationDestination(icon: Icon(Icons.home), label: "Home"),
              NavigationDestination(icon: Icon(Icons.camera), label: "Scane"),
              NavigationDestination(
                  icon: Icon(Icons.settings), label: "Setting"),
            ]),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [const HomePage()];
}
