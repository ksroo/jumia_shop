import 'package:flutter/material.dart';

import 'package:jumia_shop/view/widgets/custom_text.dart';

class CustomButtonSocial extends StatelessWidget {
  final String text;
  final String imageName;
  final Function onPressed;
  CustomButtonSocial({
    this.text,
    this.imageName,
    this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: Colors.grey.shade100,
      ),
      child: FlatButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Image.asset(imageName),
            SizedBox(
              width: 90,
            ),
            CustomText(
              text: text,
            ),
          ],
        ),
      ),
    );
  }
}
