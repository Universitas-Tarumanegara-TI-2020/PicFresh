import 'package:flutter/material.dart';
//import 'package:picfresh/components/product_card.dart';
//import 'package:picfresh/models/product.dart';
import 'package:picfresh/models/recipe.dart';
import 'package:picfresh/screens/categories/seafood/components/seafood_categories_card.dart';

import '../../../../size_config.dart';

class BodySeafood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Padding(
        //   padding:
        //       EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        //   // child: SectionTitle(title: "Meat", press: () {}),
        // ),
        Image.asset("assets/images/banner_1.png"),
        // SizedBox(height: getProportionateScreenWidth(20)),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
              vertical: getProportionateScreenWidth(5),
            ),
            child: GridView.builder(
              itemCount: seafoodRecipe.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.75),
              itemBuilder: (context, index) {
                if (seafoodRecipe[index].isSeafoodCat)
                  return CategoriesCard(
                    seafoodrecipe: seafoodRecipe[index],
                    press: () {}, product: null, //product null ini baru ditambahin
                    // press: () => Navigator.pushNamed(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => DetailScreen(
                    //       product: dataProduct[index],
                    //     ),
                    //   ),
                    // ),
                  );

                return SizedBox
                    .shrink(); // here by default width and height is 0
              },
            ),
          ),
        )
      ],
    );
  }
}