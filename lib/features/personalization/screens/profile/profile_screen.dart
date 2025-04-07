import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:t_store_ecommerce_app/common/widgets/images/t_circular_image.dart';
import 'package:t_store_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:t_store_ecommerce_app/features/personalization/screens/profile/widgets/profile_menu.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppbar(
        title: Text('Profile'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(
                        image: TImages.user, width: 80, height: 80),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Change Profile Picture')),
                  ],
                ),
              ),

              /// Details
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Heading Profile Info
              const TSectionHeading(
                  title: 'Profile Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),
              TProfileMenu(
                  title: 'Name', value: 'Redwan Ahmed Fahim', onPressed: () {}),
              TProfileMenu(
                  title: 'Username', value: 'redredcode', onPressed: () {}),
              const SizedBox(height: TSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Heading Personal Info
              const TSectionHeading(
                  title: 'Personal Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),
              TProfileMenu(
                  title: 'User ID',
                  value: '45689',
                  onPressed: () {},
                  icon: Iconsax.copy),
              TProfileMenu(
                  title: 'E-mail',
                  value: 'thebigredbhuiyan@gmail.com',
                  onPressed: () {}),
              TProfileMenu(
                  title: 'Phone Number',
                  value: '+92-317-8059528',
                  onPressed: () {}),
              TProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
              TProfileMenu(
                  title: 'Date of Birth',
                  value: '10 Oct, 1994',
                  onPressed: () {}),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Delete Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
