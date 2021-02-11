import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jumia_shop/core/view_model/auth_view_model.dart';
import 'package:jumia_shop/core/view_model/control_view_model.dart';
import 'package:jumia_shop/view/auth/login_screen.dart';
import 'package:jumia_shop/view/cart_view.dart';
import 'package:jumia_shop/view/home_screen.dart';
import 'package:jumia_shop/view/profile_view.dart';

class ControlView extends GetWidget<AuthViewModel> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return (Get.find<AuthViewModel>().user == null)
          ? LoginScreen()
          : GetBuilder<ControlViewModel>(
              builder: (controller) => Scaffold(
                body: controller.currentScreen,
                bottomNavigationBar: bottomNavigationBar(),
              ),
            );
    });
  }

  Widget bottomNavigationBar() {
    return GetBuilder<ControlViewModel>(
      init: ControlViewModel(),
      builder: (controller) => BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Text("Explore"),
            ),
            label: "",
            icon: Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Image.asset(
                'assets/images/explore.png',
                fit: BoxFit.contain,
                width: 20,
              ),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Text("Cart"),
            ),
            label: "",
            icon: Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Image.asset(
                'assets/images/cart.png',
                fit: BoxFit.contain,
                width: 20,
              ),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Text("Account"),
            ),
            label: "",
            icon: Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Image.asset(
                'assets/images/personal.png',
                fit: BoxFit.contain,
                width: 20,
              ),
            ),
          ),
        ],
        currentIndex: controller.navigatorValue,
        onTap: (index) {
          controller.changeSelectedValue(index);
        },
        elevation: 0,
        selectedItemColor: Colors.black,
        backgroundColor: Colors.grey.shade50,
      ),
    );
  }
}
