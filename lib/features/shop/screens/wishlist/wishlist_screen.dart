import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:t_store_ecommerce_app/common/widgets/icons/t_circular_icon.dart';
import 'package:t_store_ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:t_store_ecommerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:t_store_ecommerce_app/features/shop/screens/home/home_screen.dart';

import '../../../../utils/constants/sizes.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppbar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TCircularIcon(
              icon: Iconsax.add,
              onPressed: () => Get.to(() => const HomeScreen())),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(
                  itemCount: 6,
                  itemBuilder: (_, index)=> const TProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
