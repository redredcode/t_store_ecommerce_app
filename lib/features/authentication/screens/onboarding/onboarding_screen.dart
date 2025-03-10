import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store_ecommerce_app/features/authentication/controllers/onboarding_controller.dart';
import 'package:t_store_ecommerce_app/utils/constants/image_strings.dart';
import 'package:t_store_ecommerce_app/utils/constants/text_strings.dart';
import 'widgets/onboarding_dot_navigation.dart';
import 'widgets/onboarding_next_button.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          // Horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoarding1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoarding2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoarding3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // Skip button
          const OnBoardingSkipButton(),

          // Dot navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),
          // Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}







