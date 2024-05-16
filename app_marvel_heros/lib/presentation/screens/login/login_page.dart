import 'package:app_marvel_heros/infrastructure/ultils/app_gradients.dart';
import 'package:app_marvel_heros/infrastructure/ultils/app_images.dart';
import 'package:app_marvel_heros/presentation/screens/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(gradient: AppGradients.linear),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Column(
                children: [
                  Image.asset(AppImages.logo),
                  const SizedBox(height: 50),
                  SizedBox(
                    width: Get.size.width * .9,
                    height: 42,
                    child: SignInButton(
                      Buttons.Google,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)),
                      onPressed: () => controller.login(),
                      text: 'Entrar com o Google',
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
