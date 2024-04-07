import 'package:flutter/material.dart';

class CustomSizedBox extends StatelessWidget {
 const CustomSizedBox({super.key, this.customHeight});
final double? customHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: customHeight,
    );
  }
}