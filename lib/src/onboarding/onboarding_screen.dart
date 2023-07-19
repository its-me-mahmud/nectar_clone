import 'package:flutter/material.dart';
import 'package:nectar_clone/src/widgets/widgets.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset(
              'assets/image/onboarding.png',
              fit: BoxFit.cover,
            ),
            Positioned(
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset('assets/icon/icon-white.png'),
                    const SizedBox(height: 16),
                    const Text(
                      'Welcome\nto our store',
                      style: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Get your groceries in as fast as one hour',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w100,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 40),
                    ReusablePrimaryButton(
                      onPressed: () {},
                      title: 'Get Started',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
