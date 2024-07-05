import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/text_strings.dart';

class TFormDivider extends StatelessWidget {
  final String dividerText;
  const TFormDivider({
    super.key,
    required this.dividerText,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            thickness: 0.5,
            color: dark ? TColors.darkerGrey : TColors.grey,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            thickness: 0.5,
            color: dark ? TColors.darkerGrey : TColors.grey,
            indent: 60,
            endIndent: 5,
          ),
        ),
      ],
    );
  }
}
