import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store_ecommerce_app/common/widgets/login_signup/form_divider.dart';
import 'package:t_store_ecommerce_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:t_store_ecommerce_app/features/authentication/screens/login/widgets/login_header.dart';
import '../../../../common/styles/spacing_styles.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              // logo, title & sub title
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TLoginHeader(),

                  // Form
                  const TLoginForm(),

                  // Divider
                  TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // Footer
                  const TSocialButtons(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}