import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:nectar_clone/src/auth/phone_auth_screen.dart';
import 'package:nectar_clone/src/auth/sign_in_screen.dart';
import 'package:nectar_clone/src/utils/app_color.dart';
import 'package:nectar_clone/src/widgets/widgets.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/image/veg.png',
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Get your groceries\nwith nectar',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        color: Color(AppColor.primaryTextColor),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  IntlPhoneField(
                    onTap: () {
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => const PhoneAuthScreen(),
                        ),
                        (route) => true,
                      );
                    },
                    initialCountryCode: 'BD',
                    showDropdownIcon: false,
                    dropdownTextStyle: const TextStyle(fontSize: 18),
                    decoration: const InputDecoration(counterText: ''),
                    showCursor: false,
                    keyboardType: TextInputType.none,
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    'Or connect with social media',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(AppColor.secondaryTextColor),
                    ),
                  ),
                  const SizedBox(height: 37),
                  ReusableIconButton(
                    onPressed: () {},
                    title: 'Continue with Google',
                    imageUrl: 'assets/icon/google.png',
                    color: AppColor.googleButtonColor,
                  ),
                  const SizedBox(height: 20),
                  ReusableIconButton(
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => const SignInScreen(),
                        ),
                        (route) => true,
                      );
                    },
                    title: 'Continue with Email',
                    showIcon: true,
                    icon: Icons.email_outlined,
                    color: AppColor.primaryColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
