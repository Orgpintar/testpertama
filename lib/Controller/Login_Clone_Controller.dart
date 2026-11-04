import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:testpertama/routes.dart';

class LoginCloneController extends GetxController {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs;

  void login() async {
    if (txtUsername.text.toString().isEmpty || txtPassword.text.toString().isEmpty) {
      Get.snackbar("Error", "Username dan Password gak boleh kosong");
    } else {
      try {
        isLoading.value = true;// tanda loading dimulai
        final url = Uri.parse("https://mediadwi.com/api/latihan/login");

        final respone = await http.post(url, body: {
          "username": txtUsername.text.toString(),
          "password": txtPassword.text.toString()
        });

        isLoading.value = false; // tanda loading selesai
        if (respone.statusCode == 200) {
          final data = jsonDecode(respone.body);
          if(data['status'] == true) {
            Get.snackbar("Berhasil", data['message']);
            Get.toNamed(Routes.mainmenu);
          } else {
            Get.snackbar("Error", data['message']);
          }
        }else {
          Get.snackbar("Error", "Terjadi kesalahan pada internet");
        }
      } catch (e) {
        Get.snackbar("gagal", e.toString());
      }
    }
    isLoading.value = false;
  }
}