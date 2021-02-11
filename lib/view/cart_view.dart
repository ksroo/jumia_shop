import 'package:flutter/material.dart';
import 'package:jumia_shop/constance.dart';
import 'package:jumia_shop/view/widgets/custom_button.dart';
import 'package:jumia_shop/view/widgets/custom_text.dart';

class CartView extends StatelessWidget {
  List<String> names = <String>[
    'macbook',
    'macbook',
    'macbook',
    'macbook',
    'macbook',
  ];
  List<String> images = <String>[
    'assets/images/hand.png',
    'assets/images/hand.png',
    'assets/images/hand.png',
    'assets/images/hand.png',
    'assets/images/hand.png',
  ];

  List<int> price = <int>[
    100,
    200,
    300,
    400,
    500,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    height: 140,
                    child: Row(
                      children: [
                        Container(
                          width: 140,
                          child: Image.asset(
                            images[index],
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: names[index],
                                fontSize: 24,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CustomText(
                                color: primaryColor,
                                text: " \$ ${price[index].toString()}",
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 140,
                                color: Colors.grey.shade200,
                                height: 40,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.add,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    CustomText(
                                      alignment: Alignment.center,
                                      text: '1',
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(bottom: 20),
                                      child: Icon(
                                        Icons.minimize,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: names.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 15,
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CustomText(
                      text: 'TOTAL',
                      fontSize: 22,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomText(
                      text: '\$ 2000',
                      color: primaryColor,
                      fontSize: 18,
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  width: 180,
                  height: 100,
                  child: CustomButton(
                    onPressed: () {},
                    text: 'CHECKOUT',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
