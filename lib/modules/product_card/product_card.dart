import 'package:flutter/material.dart';

import '../../core/constants.dart';

class ProductCardScreen extends StatefulWidget {
  final int product;
  const ProductCardScreen({super.key, required this.product});

  @override
  State<ProductCardScreen> createState() => _ProductCardScreenState();
}

class _ProductCardScreenState extends State<ProductCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Hero(
            tag: products[widget.product],
            child: Image(
              image: AssetImage(products[widget.product]),
              height: 350,
              width: 350,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Text(products[widget.product]),
          ),
        ],
      ),
    );
  }
}
