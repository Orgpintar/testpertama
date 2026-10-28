
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testpertama/Controller/Menu_Drawer_Controller.dart';
import 'package:testpertama/Controller/mainMenu_Controller.dart';

class MainDrawerPage extends StatelessWidget {
  MainDrawerPage({super.key});

  final drawerController = Get.put(MainDrawerController());
  final mainController = Get.find<MainMenuController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Main Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Home'),
              selected: mainController.selectedIndex.value == 0,
              onTap: () {
                drawerController.changePage(0);
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.history_outlined),
              title: const Text('History'),
              selected: mainController.selectedIndex.value == 1,
              onTap: () {
                drawerController.changePage(1);
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.person_outline),
              title: const Text('Profile'),
              selected: mainController.selectedIndex.value == 2,
              onTap: () {
                drawerController.changePage(2);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
