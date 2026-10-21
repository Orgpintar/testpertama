import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:testpertama/Controller/mainMenu_Controller.dart';

class MainmenuPage extends StatelessWidget {
  MainmenuPage({super.key});
  final MainMenucontroller = Get.put(MainMenuController());

  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: IndexedStack(
          index: MainMenucontroller.selectedIndex.value,
          children: MainMenucontroller.listpages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: MainMenucontroller.changePage,
          currentIndex: MainMenucontroller.selectedIndex.value,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history_outlined),
              label: "History",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}