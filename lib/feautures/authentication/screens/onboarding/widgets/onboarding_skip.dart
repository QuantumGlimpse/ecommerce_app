import 'package:ecommerce_app/feautures/authentication/controllers/onboarding_controllers.dart';
import 'package:flutter/material.dart';
import '../../../../../utils/constants/size.dart';
import '../../../../../utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingControllers.instance;
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.spaceBtwItems,
      child: TextButton(
        onPressed: controller.skipPage,
        child: const Text('Skip'),
      ),
    );
  }
}
