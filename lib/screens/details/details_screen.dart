import 'package:flutter/material.dart';

import '../../models/product.dart';
import 'components/details_body.dart';
/*import 'components/custom_app_bar.dart';*/

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments agrs =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: Body(product: agrs.product!),
    );
  }
}

class ProductDetailsArguments {
  final Product? product;

  ProductDetailsArguments({required this.product});
}
