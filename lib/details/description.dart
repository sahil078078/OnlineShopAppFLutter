import 'package:flutter/material.dart';

import '../models/products.dart';
class Descriptions extends StatelessWidget {
  const Descriptions({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(
        product.description,
        textAlign: TextAlign.justify,
        style: const TextStyle(height: 1.25),
      ),
    );
  }
}