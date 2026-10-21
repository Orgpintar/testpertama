import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:testpertama/Menu/history.dart';
import 'package:testpertama/Menu/home.dart';
import 'package:testpertama/Menu/profile.dart';

class MainMenuController extends GetxController{
  final RxInt selectedIndex = 0.obs;

  void changePage (int index){
    selectedIndex.value = index;
  }
  List<Widget> listpages = [HomePage(), HistoryPage(), ProfilePage()];
}