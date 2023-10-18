import 'package:flutter/material.dart';
import 'package:picfresh/components/product_card.dart';
import 'package:picfresh/models/product.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class NewRecipe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "New Recipe", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                dataProduct.length,
                (index) {
                  if (dataProduct[index].isNewRecipe)
                    return ProductCard(product: dataProduct[index]);

                  return SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        )
      ],
    );
  }
}
