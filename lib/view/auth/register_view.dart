import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jumia_shop/core/view_model/auth_view_model.dart';
import 'package:jumia_shop/view/auth/login_screen.dart';
import 'package:jumia_shop/view/widgets/custom_button.dart';
import 'package:jumia_shop/view/widgets/custom_text.dart';
import 'package:jumia_shop/view/widgets/custom_text_from_field.dart';

import '../../constance.dart';

class RegisterScreen extends GetWidget<AuthViewModel> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: GestureDetector(
            onTap: () {
              Get.off(LoginScreen());
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
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
                  CustomText(
                    text: "Sign Up,",
                    fontSize: 30,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomTextFromField(
                    text: 'Name',
                    hint: 'Walid Mahmoud',
                    onSaved: (value) {
                      controller.name = value;
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
                    text: 'Email',
                    hint: 'iamdavid@gmail.com',
                    onSaved: (value) {
                      controller.email = value;
                    },
                    validator: (value) {
                      if (value == null) {
                        print('error');
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
                  CustomButton(
                    text: 'SIGN UP',
                    onPressed: () {
                      _formKey.currentState.save();
                      if (_formKey.currentState.validate()) {
                        controller.CreateAccountWithEnailAndPassword();
                      }
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
