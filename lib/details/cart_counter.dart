import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItem = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutLineButton(
            icon: Icons.remove,
            press: () {
              if (numOfItem > 1) {
                setState(() {
                  numOfItem--;
                  print(numOfItem);
                });
              }
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            numOfItem.toString().padLeft(2,"0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutLineButton(
            icon: Icons.add,
            press: () {
              setState(() {
                numOfItem++;
                print(numOfItem);
              });
            }),
      ],
    );
  }

  SizedBox buildOutLineButton(
      {required IconData icon, required VoidCallback press}) {
    return SizedBox(
      height: 32,
      width: 40,
      child: OutlinedButton(
        onPressed: press,
        child: Icon(icon),
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          padding: MaterialStateProperty.all(EdgeInsets.zero),
        ),
      ),
    );
  }
}