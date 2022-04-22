import 'package:flutter/material.dart';

class Product {
  String image, title, description;
  int price, size, id;
  Color color;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.size,
    required this.description,
    required this.image,
    required this.color,
  });
}

List<Product> products = [
  Product(
    image: 'assets/images/bag_1.png',
    title: "Office Code",
    description: dummyText,
    price: 234,
    size: 12,
    id: 1,
    color: const Color(0xff3d82ae),
  ),
  Product(
    id: 2,
    title: 'Belt Bag',
    price: 235,
    size: 8,
    description: dummyText,
    image: 'assets/images/bag_2.png',
    color: const Color(0xffd3a984),
  ),
  Product(
    id: 3,
    title: 'Hang Top',
    price: 236,
    size: 10,
    description: dummyText,
    image: 'assets/images/bag_3.png',
    color: const Color(0xff989493),
  ),
  Product(
    id: 4,
    title: 'Old Fashion',
    price: 237,
    size: 11,
    description: dummyText,
    image: 'assets/images/bag_5.png',
    color: const Color(0xffe6b398),
  ),
  Product(
    id: 5,
    title: 'Office Code',
    price: 240,
    size: 12,
    description: dummyText,
    image: 'assets/images/bag_5.png',
    color: const Color(0xfffb7883),
  ),
  Product(
    id: 6,
    title: 'Office Code',
    price: 350,
    size: 12,
    description: dummyText,
    image: 'assets/images/bag_6.png',
    color: const Color(0xffaeaeae),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.";
