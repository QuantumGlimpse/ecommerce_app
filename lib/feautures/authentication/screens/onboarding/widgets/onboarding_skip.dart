import 'package:ecommerce_app/feautures/authentication/controllers/onboarding_controllers.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/size.dart';
import '../../../../../utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final controller = OnBoardingControllers.instance;
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.spaceBtwItems,
      child: TextButton(
        onPressed: controller.skipPage,
        child: Text(
          'Skip',
          style: TextStyle(color: dark ? TColors.primary : TColors.dark),
        ),
      ),
    );
  }
}
