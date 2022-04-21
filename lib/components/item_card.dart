import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shop_app/details/details_screen.dart';

import '../constants.dart';
import '../models/products.dart';

class ItemCard extends StatelessWidget {
  Product product;

  ItemCard({
    required this.product,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => DetailsScreen(product: product),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                // height: 180,
                // width: 170,
                decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Image.asset(product.image),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: kDefaultPaddin / 5),
              child: Text(
                product.title,
                style: const TextStyle(color: kTextLightColor),
              ),
            ),
            Text(
              "\$" + product.price.toString(),
              style: const TextStyle(
                color: kTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
