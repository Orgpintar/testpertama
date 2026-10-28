
import 'package:get/get.dart';
import 'package:testpertama/Controller/mainMenu_Controller.dart';

class MainDrawerController extends GetxController {
  final MainMenuController mainController =
      Get.find<MainMenuController>();

  void changePage(int index) {
    mainController.changePage(index);
  }
}
