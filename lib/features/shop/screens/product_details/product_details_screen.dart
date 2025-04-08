import 'package:flutter/material.dart';
import 'package:t_store_ecommerce_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:t_store_ecommerce_app/utils/helpers/helper_functions.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image Slider
            TProductImageSlider(),
          ],
        ),
      ),
    );
  }
}


