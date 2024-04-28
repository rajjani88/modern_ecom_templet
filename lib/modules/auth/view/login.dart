import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:modern_ecom_templet/commons/input_field.dart';
import 'package:modern_ecom_templet/commons/input_passsword_field.dart';
import 'package:modern_ecom_templet/modules/auth/view/register.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController emailCont = TextEditingController();
  final TextEditingController passwordCont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              children: [
                Text(
                  "Login Here!",
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ],
            ),
          ),
          const Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              children: [
                Text(
                  "Welcome to Ecom Example App ",
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
            child: ElevatedButton(onPressed: () {}, child: Text('Login')),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don\'t have an acount? '),
                InkWell(
                    onTap: () {
                      Get.to(RegisterScreen());
                    },
                    child: Text(
                      'Register Here',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor),
                    ))
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
