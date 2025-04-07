import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store_ecommerce_app/features/shop/screens/home/home_screen.dart';
import 'package:t_store_ecommerce_app/features/shop/screens/store/store_screen.dart';
import 'package:t_store_ecommerce_app/features/shop/screens/wishlist/wishlist_screen.dart';
import 'package:t_store_ecommerce_app/utils/constants/colors.dart';
import 'package:t_store_ecommerce_app/utils/helpers/helper_functions.dart';

import 'features/personalization/screens/settings/settings_screen.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigatorController());
    final darkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        ()=> NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: darkMode ? TColors.black : Colors.white,
          indicatorColor: darkMode ? TColors.white.withOpacity(0.1) : TColors.black.withOpacity(0.1),
          destinations: const [
          NavigationDestination(icon: Icon(Iconsax.home), label: 'Home',),
          NavigationDestination(icon: Icon(Iconsax.shop), label: 'Shop',),
          NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist',),
          NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile',),
        ],),
      ),
      body: Obx(()=> controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigatorController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const WishlistScreen(),
    const SettingsScreen(),
  ];
}
