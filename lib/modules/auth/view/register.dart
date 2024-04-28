import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:modern_ecom_templet/commons/input_field.dart';
import 'package:modern_ecom_templet/commons/input_passsword_field.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final TextEditingController nameCont = TextEditingController();
  final TextEditingController emailCont = TextEditingController();
  final TextEditingController passwordCont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              children: [
                BackButton(
                  onPressed: () {
                    Get.back();
                  },
                ),
                const Text(
                  "Register",
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(14.0),
            child: Row(
              children: [
                Text(
                  "Fill this Details to get Register with us",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: InputField(
              textCont: emailCont,
              hintText: 'Enter Your Name (Ex : john)',
              lblText: 'Name',
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: InputField(
              textCont: emailCont,
              hintText: 'Enter Email Ex abc@gmail.com',
              lblText: 'Email',
              inputType: TextInputType.emailAddress,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: InputPasswordField(
              textCont: passwordCont,
              hintText: 'Enter Your Password',
              lblText: 'Passowrd',
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child:
                ElevatedButton(onPressed: () {}, child: const Text('Register')),
          ),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    ));
  }
}
