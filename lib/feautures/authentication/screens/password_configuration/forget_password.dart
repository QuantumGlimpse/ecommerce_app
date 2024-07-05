import 'package:ecommerce_app/common/styles/spacing_styles.dart';
import 'package:ecommerce_app/feautures/authentication/screens/login_screen/login.dart';
import 'package:ecommerce_app/feautures/authentication/screens/password_configuration/reset_password.dart';
import 'package:ecommerce_app/utils/constants/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TTexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Text(
                TTexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtewSections * 2,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    label: Text(TTexts.email),
                    prefixIcon: Icon(Iconsax.direct_right)),
              ),
              const SizedBox(
                height: TSizes.spaceBtewSections,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(() => const ResetPassword()),
                      child: const Text(TTexts.submit)))
            ],
          ),
        ),
      ),
    );
  }
}
