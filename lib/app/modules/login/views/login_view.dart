import 'package:ajheryuk/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 25),
          children: [
            SizedBox(
              height: 130,
              child: Image.asset(
                "assets/images/logo-only.png",
                fit: BoxFit.contain,
              ),
            ),
            TextField(
              cursorColor: Colors.grey[700],
              decoration: InputDecoration(
                label: const Text(
                  "Email",
                  style: TextStyle(color: Colors.black87),
                ),
                border: InputBorder.none,
                fillColor: Colors.grey[300],
                filled: true,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            TextField(
              cursorColor: Colors.grey[700],
              obscureText: true,
              decoration: InputDecoration(
                label: const Text(
                  "Password",
                  style: TextStyle(color: Colors.black87),
                ),
                fillColor: Colors.grey[300],
                filled: true,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.remove_red_eye_outlined,
                    color: Colors.black38,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 37,
            ),
            SizedBox(
              width: Get.width,
              child: ElevatedButton(
                onPressed: () {
                  Get.offAllNamed(Routes.HOME);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFEC5F5F),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                ),
                child: const Text("Log In"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Forgot Password"),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 20),
                    height: 1,
                    color: Color(0xFFC7C9D9),
                  ),
                ),
                const Text(
                  "or",
                  style: TextStyle(color: Color(0xFF8C8C8C)),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    height: 1,
                    color: const Color(0xFFC7C9D9),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: Get.width,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0082CD),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/facebook.png"),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text("Log in with Facebook"),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: Get.width,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF6F7FA),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/google.png"),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Log in with Google",
                      style: TextStyle(color: Color(0xFF303030)),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Dont't have an account? ",
                  style: TextStyle(color: Colors.black54),
                ),
                TextButton(onPressed: () {}, child: const Text("Sign Up"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
