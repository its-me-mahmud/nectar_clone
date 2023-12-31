import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:nectar_clone/src/auth/phone_verification_screen.dart';
import 'package:nectar_clone/src/utils/utils.dart';

class PhoneAuthScreen extends StatelessWidget {
  const PhoneAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.chevron_left_rounded,
              size: 32,
              color: Color(AppColor.primaryTextColor),
            ),
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Enter your mobile number',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  color: Color(AppColor.primaryTextColor),
                ),
              ),
              SizedBox(height: 27),
              Text(
                'Mobile Number',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(AppColor.secondaryTextColor),
                ),
              ),
              SizedBox(height: 10),
              IntlPhoneField(
                initialCountryCode: 'BD',
                showDropdownIcon: false,
                dropdownTextStyle: TextStyle(fontSize: 18),
                decoration: InputDecoration(
                  counterText: '',
                  contentPadding: EdgeInsets.symmetric(vertical: 14),
                ),
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => const PhoneVerificationScreen(),
              ),
              (route) => true,
            );
          },
          backgroundColor: const Color(AppColor.primaryColor),
          child: const Icon(Icons.chevron_right_rounded, size: 32),
        ),
      ),
    );
  }
}
