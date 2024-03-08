import 'package:ecommerce_app/features/authentication/screen/signup/widgets/term_condition_checkbox.dart';
import 'package:ecommerce_app/features/authentication/screen/verify%20email/verify_email.dart';
import 'package:ecommerce_app/utils/constants/size.dart';
import 'package:ecommerce_app/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        const Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  labelText: TText.firstname,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
            SizedBox(
              width: TSize.spaceBtwInputField,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    labelText: TText.lastname, prefixIcon: Icon(Iconsax.user)),
              ),
            ),
          ],
        ),
        const SizedBox(height: TSize.spaceBtwInputField),
        //Username
        const TextField(
          decoration: InputDecoration(
              labelText: TText.username, prefixIcon: Icon(Iconsax.user_edit)),
        ),
        const SizedBox(height: TSize.spaceBtwInputField),
        //Email
        const TextField(
          decoration: InputDecoration(
              labelText: TText.email, prefixIcon: Icon(Iconsax.direct)),
        ),
        const SizedBox(height: TSize.spaceBtwInputField),
        //PhoneNumber
        const TextField(
          decoration: InputDecoration(
              labelText: TText.phonenumber, prefixIcon: Icon(Iconsax.call)),
        ),
        const SizedBox(height: TSize.spaceBtwInputField),
        //Password
        const TextField(
          decoration: InputDecoration(
              labelText: TText.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash)),
        ),
        const SizedBox(height: TSize.spaceBtwSection),
        //TermsConditions Checkbox
        const TTermAndConditionCheckBox(),
        const SizedBox(height: TSize.spaceBtwSection),
        //SignUp Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text(TText.createAccount)),
        )
      ],
    ));
  }
}
