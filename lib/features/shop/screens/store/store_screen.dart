import 'package:flutter/material.dart';
import 'package:t_store_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:t_store_ecommerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store_ecommerce_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:t_store_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:t_store_ecommerce_app/utils/constants/colors.dart';
import 'package:t_store_ecommerce_app/utils/constants/sizes.dart';
import 'package:t_store_ecommerce_app/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppbar(
        title: Text(
          'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [TCartCounterIcon(onPressed: () {})],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                automaticallyImplyLeading: false,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    children: [
                      // Search bar
                      const SizedBox(height: TSizes.spaceBtwItems),
                      const TSearchContainer(text: 'Search in Store', showBorder: true, showBackground: false, padding: EdgeInsets.zero,),
                      const SizedBox(height: TSizes.spaceBtwSections),

                      // Featured Brands
                      TSectionHeading(title: 'Featured Brands', onPressed: (){},),
                      const SizedBox(height: TSizes.spaceBtwItems / 1.5),


                    ],
                  ),
                ),
              ),
            ];
          },
          body: Container()),
    );
  }
}
