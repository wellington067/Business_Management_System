import 'package:business_management_system/shared/components/forms/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignOutPage extends StatefulWidget {
  const SignOutPage({super.key});

  @override
  State<SignOutPage> createState() => _SignOutPageState();
}

class _SignOutPageState extends State<SignOutPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Form(child: Column(
          children: [
            CustomTextFormField(
              hintText: 'cadastro',
            )
          ],
        )),
      ),
    );
  }
}