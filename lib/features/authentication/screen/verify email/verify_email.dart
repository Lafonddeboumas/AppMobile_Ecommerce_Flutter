import 'package:ecommerce_app/common/successcreen.dart';
import 'package:ecommerce_app/features/authentication/screen/login/login.dart';
import 'package:ecommerce_app/utils/constants/image.string.dart';
import 'package:ecommerce_app/utils/constants/size.dart';
import 'package:ecommerce_app/utils/constants/text_string.dart';
import 'package:ecommerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const Login()),
            icon: const Icon(CupertinoIcons.clear),
          )
        ],
      ),
      body: SingleChildScrollView(
        //Padding to give defaults equal space on all sides in all screens
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              //Images
              Image(
                image: const AssetImage(TImages.verifyEmail),
                width: THelperFunction.screenWidth() * 0.7,
              ),
              const SizedBox(height: TSize.spaceBtwSection),
              //Title & Subtitle
              Text(
                TText.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSize.spaceBtwItems),
              Text(
                "SoutenirPossaCode@gmail.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSize.spaceBtwItems),
              Text(
                TText.confirmEmailSubtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSize.spaceBtwSection),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const SuccessScreen()),
                  child: const Text(TText.continuee),
                ),
              ),
              const SizedBox(height: TSize.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      TText.resendEmail,
                      style: Theme.of(context).textTheme.labelLarge,
                    )),
              )
              //Buttons
            ],
          ),
        ),
      ),
    );
  }
}
