import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store_ecommerce_app/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:t_store_ecommerce_app/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:t_store_ecommerce_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:t_store_ecommerce_app/features/shop/screens/product_details/widgets/rating_and_share.dart';
import 'package:t_store_ecommerce_app/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/sizes.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image Slider
            TProductImageSlider(),

            /// 2 - Product Details
            Padding(
              padding: EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  /// - Rating and share button
                  TRatingAndShare(),

                  /// Price, Title, Stock & Brand
                  TProductMetaData(),

                  /// Attributes
                  TProductAttributes(),


                  /// Checkout Button
                  /// Description
                  /// Reviews
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


