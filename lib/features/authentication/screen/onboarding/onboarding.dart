// ignore_for_file: camel_case_types

import 'package:ecommerce_app/features/authentication/controller_onboarding/onboarding_controller.dart';
import 'package:ecommerce_app/features/authentication/screen/onboarding/widgets/onboarding_dotnavigation.dart';

import 'package:ecommerce_app/features/authentication/screen/onboarding/widgets/onboarding_page.dart';
import 'package:ecommerce_app/features/authentication/screen/onboarding/widgets/onboarding_skip.dart';
import 'package:ecommerce_app/features/authentication/screen/onboarding/widgets/onboardingnext_button.dart';

import 'package:ecommerce_app/utils/constants/image.string.dart';
import 'package:ecommerce_app/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          //Horizental Scrollable Page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onboardingImage9,
                title: TText.onboradingTitle1,
                subtitle: TText.onboradingSubtitle1,
              ),
              OnBoardingPage(
                image: TImages.onboardingImage8,
                title: TText.onboradingTitle2,
                subtitle: TText.onboradingSubtitle2,
              ),
              OnBoardingPage(
                image: TImages.onboardingImage10,
                title: TText.onboradingTitle3,
                subtitle: TText.onboradingSubtitle3,
              )
            ],
          ),
          //Skip Button
          const OnBoardingSkip(),
          //Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),
          //CircularButton
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
