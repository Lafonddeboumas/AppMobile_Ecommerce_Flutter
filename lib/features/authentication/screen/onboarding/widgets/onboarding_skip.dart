import 'package:ecommerce_app/features/authentication/controller_onboarding/onboarding_controller.dart';
import 'package:ecommerce_app/utils/constants/size.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSize.defaultSpace,
        child: TextButton(
          onPressed: () => OnboardingController.Instance.skiPage(),
          child: Text(
            'Passez',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ));
  }
}
