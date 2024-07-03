import 'package:ecommerce_app/common/styles/spacing_styles.dart';
import 'package:ecommerce_app/feautures/authentication/screens/login_screen/widgets/form.dart';
import 'package:ecommerce_app/feautures/authentication/screens/login_screen/widgets/header.dart';
import 'package:ecommerce_app/utils/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/login_form_divider.dart';
import '../../../../common/widgets/login_socialbuttons.dart';
import '../../../../utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppbarHeight,
          child: Column(
            children: [
              /// Logos, Titles and Sub-titles
              const TLoginheader(),

              /// Form
              const TLoginForm(),

              /// Divider
              TFormDivider(
                dividerText: TTexts.orSignInWith.capitalize!,
              ),
              const SizedBox(
                height: TSizes.spaceBtewSections,
              ),

              /// Footer
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
