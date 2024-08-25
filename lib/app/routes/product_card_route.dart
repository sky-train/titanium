import 'package:flutter/material.dart';
import 'package:titanium/modules/product_card/product_card.dart';

class ProductCardPageRouteArgs {
  final Key? key;
  final int product;
  ProductCardPageRouteArgs({this.key, required this.product});
}

class ProductCardPageRoute extends Page<ProductCardScreen> {
  ProductCardPageRoute(int product, {Key? key})
      : super(
          key: const ValueKey('product_card'),
          name: 'product_card',
          arguments: ProductCardPageRouteArgs(product: product),
        );

  @override
  Route<ProductCardScreen> createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (BuildContext context) {
        final args = arguments as ProductCardPageRouteArgs;
        return ProductCardScreen(
          key: args.key,
          product: args.product,
        );
      },
    );
  }
}
