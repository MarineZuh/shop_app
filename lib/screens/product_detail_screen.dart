import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/products_provider.dart';

class ProductDetailScreen extends StatelessWidget {
  static final String routeName = 'product-detail';
  // final Product product;

  // const ProductDetailScreen(this.product);

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final productData = Provider.of<ProductsProvider>(context, listen: false);
    final loadedProduct = productData.findById(productId);
    return Scaffold(
      appBar: AppBar(title: Text(loadedProduct.title)),
    );
  }
}
