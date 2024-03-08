import 'package:ecommerce_app/common/widget.login_signup/form_divider.dart';
import 'package:ecommerce_app/common/widget.login_signup/social_button.dart';
import 'package:ecommerce_app/features/authentication/screen/signup/widgets/form_signup.dart';
import 'package:ecommerce_app/utils/constants/size.dart';
import 'package:ecommerce_app/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(
                TText.orSignUpWith,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSize.spaceBtwSection),
              //Form
              const TSignUpForm(),
              const SizedBox(height: TSize.spaceBtwSection),
              //Divider
              TFormDivider(dividerText: TText.orSignUpWith.capitalize!),
              const SizedBox(height: TSize.spaceBtwSection),
              //Social Button
              const TSocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
