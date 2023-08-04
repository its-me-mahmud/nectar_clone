import 'package:flutter/material.dart';
import 'package:nectar_clone/src/utils/utils.dart';
import 'package:nectar_clone/src/widgets/widgets.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

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
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Image.asset('assets/icon/location.png'),
              const SizedBox(height: 40),
              const Text(
                'Select Your Location',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  color: Color(AppColor.primaryTextColor),
                ),
              ),
              const SizedBox(height: 27),
              const Text(
                'Switch on your location to stay in tune with\nwhat’s happening in your area',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(AppColor.secondaryTextColor),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 90),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Your Zone',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(AppColor.secondaryTextColor),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              DropdownButton(
                onChanged: (value) {},
                isExpanded: true,
                hint: const Text('Types of your zone'),
                icon: const Icon(Icons.keyboard_arrow_down_rounded),
                items: const [
                  DropdownMenuItem(
                    child: Text(
                      'Banasree',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(AppColor.primaryTextColor),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Your Area',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(AppColor.secondaryTextColor),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              DropdownButton(
                onChanged: (value) {},
                isExpanded: true,
                hint: const Text('Types of your area'),
                icon: const Icon(Icons.keyboard_arrow_down_rounded),
                items: const [],
              ),
              const SizedBox(height: 40),
              ReusablePrimaryButton(
                onPressed: () {},
                title: 'Submit',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
