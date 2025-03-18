import 'package:flutter/material.dart';
import 'package:t_store_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:t_store_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store_ecommerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store_ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:t_store_ecommerce_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:t_store_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:t_store_ecommerce_app/utils/constants/colors.dart';
import 'package:t_store_ecommerce_app/utils/constants/enums.dart';
import 'package:t_store_ecommerce_app/utils/constants/image_strings.dart';
import 'package:t_store_ecommerce_app/utils/constants/sizes.dart';
import 'package:t_store_ecommerce_app/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/images/t_circular_image.dart';
import '../../../../common/widgets/texts/t_brand_title_text_with_verified_icon.dart';

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
                      const TSearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: TSizes.spaceBtwSections),

                      // Featured Brands
                      TSectionHeading(
                        title: 'Featured Brands',
                        onPressed: () {},
                      ),
                      const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                      TGridLayout(itemCount: 4, mainAxisExtent: 80, itemBuilder: (_, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: TRoundedContainer(
                            padding: const EdgeInsets.all(TSizes.sm),
                            showBorder: true,
                            backgroundColor: Colors.transparent,
                            child: Row(
                              children: [
                                // Icon
                                Flexible(
                                  child: TCircularImage(
                                    image: TImages.clothIcon,
                                    isNetworkImage: false,
                                    backgroundColor: Colors.transparent,
                                    overlayColor:
                                    THelperFunctions.isDarkMode(context)
                                        ? TColors.white
                                        : TColors.black,
                                  ),
                                ),
                                const SizedBox(width: TSizes.spaceBtwItems / 2),

                                // Text
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const TBrandTitleWithVerifiedIcon(
                                        title: 'Nike',
                                        brandTextSize: TextSizes.large,
                                      ),
                                      Text(
                                        '256 products',
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                        Theme.of(context).textTheme.labelMedium,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      })
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
