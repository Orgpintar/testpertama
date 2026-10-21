import 'package:testpertama/Pages/registration_Page.dart';
import 'package:testpertama/Pages/confirm_Page.dart';
import 'package:testpertama/Pages/listmakanan_Page.dart';
import 'package:testpertama/Pages/detailmakanan_Page.dart';
import 'package:testpertama/Pages/mainMenu_Page.dart';
import 'package:get/get.dart';

class Routes {
  // list variabel nama halaman
  static const String registration = "/registration";
  static const String confirm = "/confirm_registration";
  static const String listmakanan = "/listmakanan";
  static const String detailmakanan = "/detailmakanan";
  static const String mainmenu = "/mainmenu";
  // others pages here

  // untuk kita daftarkan di main dart, isinya array page yang kita punya
  static final pages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirm, page: () => ConfirmRegPage()),
    GetPage(name: listmakanan, page: () => ListMakananPage()),
    GetPage(name: detailmakanan, page: () => DetailmakananPage()),
    GetPage(name: mainmenu, page: () => MainmenuPage()),
  ];
}