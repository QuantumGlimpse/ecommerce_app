import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/image_strings.dart';
import '../../utils/constants/size.dart';

class TSocialButtons extends StatelessWidget {
  const TSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /// Google sign-in
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: TColors.grey),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: TSizes.md,
              height: TSizes.md,
              image: AssetImage(TImages.google),
            ),
          ),
        ),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),

        /// Facebook sign-in
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: TColors.grey),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: TSizes.md,
              height: TSizes.md,
              image: AssetImage(TImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
