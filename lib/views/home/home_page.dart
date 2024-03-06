import 'package:business_management_system/assets/assets_index.dart';
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
      title: Image.asset(Assets.logoLmts),
      backgroundColor: backgroundColorAll,
      ),
    );
  }
}