import 'package:ecommerce_app/features/authentication/screen/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ecommerce_app/utils/constants/text_string.dart';
import 'package:ecommerce_app/utils/constants/size.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSize.spaceBtwSection),
        child: Column(
          children: [
            //Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TText.email,
              ),
            ),
            const SizedBox(height: TSize.spaceBtwInputField),
            //Password
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check1),
                  labelText: TText.password,
                  suffixIcon: Icon(Iconsax.eye_slash)),
              obscureText: true,
            ),
            const SizedBox(height: TSize.spaceBtwInputField / 2),
            //Remember me & Forgot password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(TText.rememberMe)
                  ],
                ),
                TextButton(
                    onPressed: () {}, child: const Text(TText.forgetPassword))
              ],
            ),
            const SizedBox(height: TSize.spaceBtwInputField),
            //Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(TText.signIn),
              ),
            ),
            //Create Account Button
            const SizedBox(
              height: TSize.spaceBtwItems,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () => Get.to(() => const SignUp()),
                  child: const Text(TText.createAccount)),
            )
          ],
        ),
      ),
    );
  }
}
