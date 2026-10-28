
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testpertama/Controller/mainMenu_Controller.dart';
import 'package:testpertama/Pages/MenuDrawer_Page.dart';

class MainmenuPage extends StatelessWidget {
  MainmenuPage({super.key});

  final MainMenucontroller = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: const Text('Main Menu'),
        ),

        body: IndexedStack(
          index: MainMenucontroller.selectedIndex.value,
          children: MainMenucontroller.listpages,
        ),

        drawer: MainDrawerPage(),

        bottomNavigationBar: BottomNavigationBar(
          onTap: MainMenucontroller.changePage,
          currentIndex: MainMenucontroller.selectedIndex.value,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history_outlined),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
