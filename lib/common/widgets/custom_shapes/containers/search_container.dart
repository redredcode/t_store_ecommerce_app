import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.padding = const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final bool showBackground;
  final bool showBorder;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
      child: Container(
        width: TDeviceUtils.getScreenWidth(context),
        padding: padding,
        decoration: BoxDecoration(
          color: showBackground
              ? isDarkMode
                  ? TColors.dark
                  : TColors.light
              : Colors.transparent,
          borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
          border: showBorder ? Border.all(color: TColors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: TColors.darkGrey,
            ),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.apply(color: TColors.darkGrey),
            ),
          ],
        ),
      ),
    );
  }
}
