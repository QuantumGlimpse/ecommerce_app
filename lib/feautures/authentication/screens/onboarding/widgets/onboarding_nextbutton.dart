import 'package:ecommerce_app/feautures/authentication/controllers/onboarding_controllers.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/size.dart';
import '../../../../../utils/device/device_utility.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingControllers.instance;
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      right: TSizes.spaceBtwItems,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromRadius(24),
          shape: const CircleBorder(),
          backgroundColor: dark ? TColors.primary : TColors.dark,
        ),
        onPressed: controller.nextPage,
        child: const Icon(
          Iconsax.arrow_right_3,
        ),
      ),
    );
  }
}

// class OnBoardingNextButton extends StatefulWidget {
//   const OnBoardingNextButton({super.key});
//
//   @override
//   State<OnBoardingNextButton> createState() => _OnBoardingNextButtonState();
// }
//
// class _OnBoardingNextButtonState extends State<OnBoardingNextButton> {
//   @override
//   Widget build(BuildContext context) {
//     final controller = OnBoardingControllers.instance;
//     final dark = THelperFunctions.isDarkMode(context);
//     return Positioned(
//       bottom: TDeviceUtils.getBottomNavigationBarHeight(),
//       right: TSizes.spaceBtwItems,
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           minimumSize: const Size.fromRadius(24),
//           shape: const CircleBorder(),
//           backgroundColor: dark ? TColors.primary : TColors.dark,
//         ),
//         onPressed: () {
//           controller.nextPage();
//           setState(() {}); // Trigger a rebuild of the widget
//         },
//         child: controller.shiftButton()
//             ? const Text('LogIn')
//             : const Icon(Iconsax.arrow_right_3),
//       ),
//     );
//   }
// }
