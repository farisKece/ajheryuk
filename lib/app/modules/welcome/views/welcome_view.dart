import 'package:ajheryuk/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: Get.width * 0.6,
              height: Get.width * 0.6,
              child: Image.asset("assets/images/logo.png"),
            ),
            const SizedBox(
              height: 100,
            ),
            const Text(
              "Welcome to Ajheryuk",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Best and popular apps for live educaation course from home",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Color(0xFF8C8C8C)),
            ),
            const SizedBox(
              height: 75,
            ),
            SizedBox(
              width: Get.width,
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.LOGIN);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFEC5F5F),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                ),
                child: const Text("Get started"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
