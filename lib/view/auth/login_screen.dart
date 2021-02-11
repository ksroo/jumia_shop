import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jumia_shop/core/view_model/auth_view_model.dart';
import 'package:jumia_shop/view/auth/register_view.dart';
import 'package:jumia_shop/view/widgets/Custom_button_social.dart';
import 'package:jumia_shop/view/widgets/custom_button.dart';
import 'package:jumia_shop/view/widgets/custom_text.dart';
import 'package:jumia_shop/view/widgets/custom_text_from_field.dart';

import '../../constance.dart';

class LoginScreen extends GetWidget<AuthViewModel> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 50,
              right: 20,
              left: 20,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "Welcome,",
                        fontSize: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(RegisterScreen());
                        },
                        child: CustomText(
                          text: "Sign Up",
                          fontSize: 18,
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomText(
                    text: "Sign in to Continue",
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomTextFromField(
                    text: 'Email',
                    hint: 'iamdavid@gmail.com',
                    onSaved: (value) {
                      controller.email = value;
                    },
                    validator: (value) {
                      if (value == null) {
                        print("ERROR");
                      }
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CustomTextFromField(
                    text: 'Password',
                    hint: '***********',
                    onSaved: (value) {
                      controller.password = value;
                    },
                    validator: (value) {
                      if (value == null) {
                        print('error');
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomText(
                    text: 'Forgot Password?',
                    fontSize: 14,
                    alignment: Alignment.topRight,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    text: 'SIGN IN',
                    onPressed: () {
                      _formKey.currentState.save();
                      if (_formKey.currentState.validate()) {
                        controller.signInWithEnailAndPassword();
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomText(
                    text: '-OR-',
                    alignment: Alignment.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomButtonSocial(
                    text: 'Sign In with Facebook',
                    imageName: 'assets/images/facebook.png',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomButtonSocial(
                    text: 'Sign In with Google',
                    imageName: 'assets/images/google.png',
                    onPressed: () {
                      controller.googleSignInMethod();
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
