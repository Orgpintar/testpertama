import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testpertama/Components/custom_textfield.dart';
import 'package:testpertama/Components/custom_button.dart';
import 'package:testpertama/Components/custom_text.dart';
import 'package:testpertama/Controller/Login_Clone_Controller.dart';

class LoginClonePage extends StatelessWidget {
  LoginClonePage({super.key});

  final controller = Get.put(LoginCloneController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: "Login Clone API"),
      ),
      body: Column(
        children: [
          CustomText(text: "INSTAGRAM"),
          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(controller: controller.txtUsername, myHint: "Enter your username", obscureText: false)),
          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(controller: controller.txtPassword, myHint: "Enter your password", obscureText: true)),
          Obx(()=>controller.isLoading.value ? Center(child: CircularProgressIndicator()) : Container(
            margin: EdgeInsets.all(10),
            child: CustomButton(onPressed: () {
                controller.login();
            }, text: "Login"),
          ))
        ],
      ),
    );
  }
}