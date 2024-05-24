import 'package:business_management_system/assets/index.dart';
import 'package:business_management_system/controllers/home_page_controller.dart';
import 'package:business_management_system/shared/constants/style_constantes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomePageController>();

    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text(
            homeController.name.value,
            style: const TextStyle(color: textColor1),
          ),
        ),
        toolbarHeight: 80,
        leading: GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(79),
              ),
              child: Image.asset(
                Assets.user,
              ),
            ),
          ),
        ),
        backgroundColor: backgroundColorAll,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              color: backgroundColorAll,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: backgroundColorAll,
                  margin: const EdgeInsets.only(left: 20, top: 20),
                  child: const Text(
                    "Bem vindo ao LMTS",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
