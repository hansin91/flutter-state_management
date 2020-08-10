import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/providers/products.dart';

class ProductDetailScreen extends StatelessWidget {

  // final String title;
  // ProductDetailScreen(this.title);
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final product = Provider.of<Products>(context).findById(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
    );
  }
}