import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/details/product_title_with_image.dart';
import 'package:online_shop_app/models/products.dart';

import 'add_to_cart.dart';
import 'cart_counter.dart';
import 'colors_and_size.dart';
import 'counter_with_fav_button.dart';
import 'description.dart';

class DetailsScreenBody extends StatelessWidget {
  final Product product;

  const DetailsScreenBody({Key? key, required this.product}) : super(key: key);

  Widget build(BuildContext context) {
    // here size will provide total height and width
    Size size = MediaQuery.of(context).size;
    return Stack(
      fit: StackFit.expand,
      alignment: Alignment.bottomCenter,
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            margin: EdgeInsets.only(top: size.height * 0.3),
            padding: EdgeInsets.only(
              top: size.height * 0.12,
              left: 20,
              right: 20,
            ),
            alignment: Alignment.center,
            height: 465,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: Column(
              children: [
                ColorAndSize(product: product),
                const SizedBox(height: 10),
                Descriptions(product: product),
                const CounterWithFavButton(),
                const SizedBox(height: 10),
                AddToCart(product: product),
              ],
            ),
          ),
        ),
        ProfuctTitleWithImage(product: product),
      ],
    );
  }
}


