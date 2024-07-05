import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/size.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../../styles/spacing_styles.dart';

class SuccessScreen extends StatelessWidget {
  final String image, title, subtitle;
  final Function()? onPressed;
  const SuccessScreen(
      {super.key,
      this.onPressed,
      required this.image,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: TSpacingStyle.paddingWithAppbarHeight,
        child: Column(
          children: [
            Image(
              image: AssetImage(image),
              width: THelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(
              height: TSizes.spaceBtewSections,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            Text(
              'talha@gmail.com',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: TSizes.spaceBtewSections,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: onPressed, child: const Text(TTexts.tContinue)),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
          ],
        ),
      ),
    );
  }
}
