import 'package:business_management_system/assets/index.dart';
import 'package:business_management_system/shared/components/forms/custom_text_form_field.dart';
import 'package:business_management_system/shared/constants/style_constantes.dart';
import 'package:business_management_system/shared/validations/mixin_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInPage extends StatelessWidget with ValidationMixin {
  SignInPage({super.key});

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColorSecundary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              color: backgroundColorSecundary,
              width: double.infinity,
              height: 300,
              child: Center(
                  child: Image.asset(width: 128, height: 128, Assets.user)),
            ),
            const Center(
              child: Text(
                'Entrar',
                style: TextStyle(color: textColor2, fontSize: 22),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                  key: formkey,
                  child: Column(
                    children: [
                      CustomTextFormField(
                        hintText: 'E-mail',
                        icon: Icons.email,
                        validateForm: (value) => isValidEmail(value),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextFormField(
                        hintText: 'Senha',
                        icon: Icons.lock,
                        validateForm: (value) => isValidPassword(value),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              print('indo para recuperaçao de senha');
                            },
                            child: const Text(
                              'Esqueceu a senha?',
                              style: TextStyle(color: textColor2),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            if (formkey.currentState!.validate() == true) {}
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: backgroundColorButton,
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            textStyle: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          child: const Text(
                            'Entrar',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text('ou')],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            Assets.googleImage,
                            width: 50,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            Assets.facebookImage,
                            width: 50,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Não possui conta?'),
                          Text(
                            ' Crie aqui',
                            style: TextStyle(color: textColor3),
                          )
                        ],
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
