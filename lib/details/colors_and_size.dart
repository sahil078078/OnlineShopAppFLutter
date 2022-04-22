import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/products.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Color'),
            Row(
              children: const [
                ColorDot(
                    color: Color(0xff356c95), isSelected: true),
                ColorDot(color: Color(0xfff8c078)),
                ColorDot(color: Color(0xffa29b9b)),
              ],
            ),
          ],
        ),
        RichText(
          text: TextSpan(
            style: TextStyle(color: kTextColor),
            children: [
              const TextSpan(text: "Size\n"),
              TextSpan(
                text: "${product.size} cm",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;

  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5, right: 10),
      padding: const EdgeInsets.all(2.5),
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}
