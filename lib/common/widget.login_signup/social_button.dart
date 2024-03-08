import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/utils/constants/image.string.dart';
import 'package:ecommerce_app/utils/constants/size.dart';

class TSocialButton extends StatelessWidget {
  const TSocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              height: TSize.iconMd,
              width: TSize.iconMd,
              image: AssetImage(TImages.facebook),
            ),
          ),
        ),
        const SizedBox(width: TSize.spaceBtwInputField),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              height: TSize.iconMd,
              width: TSize.iconMd,
              image: AssetImage(TImages.google),
            ),
          ),
        )
      ],
    );
  }
}
