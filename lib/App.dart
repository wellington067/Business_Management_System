
import 'package:business_management_system/views/screens_index.dart';
import 'package:business_management_system/views/signIn/sign_in_page.dart';
import 'package:business_management_system/views/signOut/sign_out_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Hello world",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
      routes: {
        Screens.signOutPage: (BuildContext context) => const SignOutPage()},
    );
  }
}
