import 'package:flutter/material.dart';
import 'package:shop_app/widgets/products_grid_vies.dart';

class ProductsOverviewScreen extends StatelessWidget {
  static final String routeName = 'products-overview';

  ProductsOverviewScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MyShop')),
      body: ProductsGridView(),
    );
  }
}
