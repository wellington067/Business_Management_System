import 'package:business_management_system/app.dart';
import 'package:business_management_system/controllers/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';


void main() {
  Get.put(HomePageController());
  runApp(const App());
    
}