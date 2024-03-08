import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/size.dart';
import 'package:ecommerce_app/utils/constants/text_string.dart';
import 'package:ecommerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TTermAndConditionCheckBox extends StatelessWidget {
  const TTermAndConditionCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          height: 24,
          width: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(width: TSize.spaceBtwSection),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: TText.iAgreeTo,
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: TText.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? TColors.white : TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? TColors.white : TColors.primary,
                    ),
              ),
              TextSpan(
                  text: TText.and,
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: TText.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? TColors.white : TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? TColors.white : TColors.primary,
                    ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
