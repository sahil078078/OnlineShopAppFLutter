import 'package:flutter/material.dart';
import 'package:online_shop_app/models/products.dart';

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
            alignment: Alignment.center,
            height: 300,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              const Text(
                "Aristocratic Hand Bag",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text(
                product.title,
                style: Theme.of(context).textTheme.headline5?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
              ),
              Row(
                children: [],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
