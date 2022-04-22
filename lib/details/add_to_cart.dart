import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/products.dart';
class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 20),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: product.color)),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/add_to_cart.svg',
                color: product.color,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all(product.color),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
                child: Text(
                  "Buy Now".toUpperCase(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}