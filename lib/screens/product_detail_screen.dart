import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  static final String routeName = 'product-detail';
  // final Product product;

  // const ProductDetailScreen(this.product);


  @override
  Widget build(BuildContext context) {
  final Product product = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(title: Text(product.title)),
    );
  }
}