import 'package:jumia_shop/helper/extension.dart';
import 'package:flutter/material.dart';

class ProductModel {
  String name, image, description, sized, price;
  Color color;
  ProductModel({
    this.price,
    this.description,
    this.image,
    this.name,
    this.sized,
    this.color,
  });

  ProductModel.fromjson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }
    name = map['name'];
    image = map['image'];
    description = map['description'];
    color = HexColor.fromHex(map['color']);
    sized = map['sized'];
    price = map['price'];
  }

  tojson() {
    return {
      name: 'name',
      image: 'image',
      description: 'description',
      color: 'color',
      sized: 'sized',
      price: 'price',
    };
  }
}
