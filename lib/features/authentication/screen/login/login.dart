import 'package:ecommerce_app/common/styles/spacing_styles.dart';
import 'package:ecommerce_app/common/widget.login_signup/form_divider.dart';
import 'package:ecommerce_app/common/widget.login_signup/social_button.dart';
import 'package:ecommerce_app/features/authentication/screen/login/widgets/login_form.dart';
import 'package:ecommerce_app/features/authentication/screen/login/widgets/login_header.dart';
import 'package:ecommerce_app/utils/constants/size.dart';
import 'package:ecommerce_app/utils/constants/text_string.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
              padding: TSpacingStyles.paddingwithAppBarHeight,
              child: Column(
                children: [
                  //Logo, Title ans Subtitle
                  const TloginHeader(),

                  //Form
                  const TLoginForm(),
                  const SizedBox(height: TSize.spaceBtwSection),

                  //Divider
                  TFormDivider(dividerText: TText.orSignInWith.capitalize!),
                  const SizedBox(height: TSize.spaceBtwItems),

                  //Social media
                  const TSocialButton()
                ],
              ))),
    );
  }
}
