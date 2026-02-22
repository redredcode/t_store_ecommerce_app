import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:t_store_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store_ecommerce_app/common/widgets/products/ratings/rating_indicator.dart';
import 'package:t_store_ecommerce_app/utils/constants/colors.dart';
import 'package:t_store_ecommerce_app/utils/constants/sizes.dart';
import 'package:t_store_ecommerce_app/utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(child: Icon(Icons.person)),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text('Ibrahim Abdullah', style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        /// Review
        Row(
          children: [
            const TRatingBarIndicator(rating: 4),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('01 February, 2022', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        const ReadMoreText('The user interface is straight shit. Who made it? Lay him off! I fainted twice trying to navigate across the app. And I still feel nausea! Blah blah blah, suffer suffer scream and cry.',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: ' show less',
          trimCollapsedText: ' show more',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        /// Company reply
        TRoundedContainer(
           backgroundColor: dark ? TColors.darkGrey : TColors.grey,
          child: Padding(padding: const EdgeInsets.all(TSizes.md), child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Fire Store', style: Theme.of(context).textTheme.titleMedium,),
                  Text('02 Nov, 2022', style: Theme.of(context).textTheme.bodyMedium,)
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              const ReadMoreText('The user interface is straight shit. Who made it? Lay him off! I fainted twice trying to navigate across the app. And I still feel nausea! Blah blah blah, suffer suffer scream and cry.',
                trimLines: 1,
                trimMode: TrimMode.Line,
                trimExpandedText: ' show less',
                trimCollapsedText: ' show more',
                moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
                lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
              ),
            ],
          ),),
        )

      ],
    );
  }
}
