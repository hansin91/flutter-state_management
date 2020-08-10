import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/products.dart';
import './product_item.dart';

class ProductsGrid extends StatelessWidget {

  final bool isFavourites;
  ProductsGrid(this.isFavourites);

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Products>(context);
    final products = isFavourites ? data.favouriteProducts : data.products;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
        value: products[index],
        child: ProductItem(),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:2,
        childAspectRatio: 3 /2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10
      ),
      itemCount: products.length,
    );
  }
}