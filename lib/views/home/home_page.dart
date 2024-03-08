import 'package:business_management_system/assets/index.dart';
import 'package:business_management_system/shared/constants/style_constantes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            IconButton(onPressed: () => {}, icon: Image.asset(Assets.logoLmts)),
            const Text(
              "name of user",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        backgroundColor: backgroundColorAll,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
