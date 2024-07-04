import 'package:ecommerce_app/common/widgets/login_form_divider.dart';
import 'package:ecommerce_app/common/widgets/login_socialbuttons.dart';
import 'package:ecommerce_app/feautures/authentication/screens/sign_up/widgets/signup_form.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/constants/text_strings.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtewSections,
              ),
              const TSignupForm(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
