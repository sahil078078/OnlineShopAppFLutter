import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/products.dart';

class ProfuctTitleWithImage extends StatelessWidget {
  const ProfuctTitleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          const Text(
            "Aristocratic Hand Bag",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            product.title,
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
          ),
          const SizedBox(height: kDefaultPaddin),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(text: "price \n"),
                    TextSpan(
                      text: "\$${product.price}",
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Hero(
                  tag: "${product.id}",
                  child: Image.asset(product.image, fit: BoxFit.fill),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
