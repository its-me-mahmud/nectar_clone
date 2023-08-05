import 'package:flutter/material.dart';
import 'package:nectar_clone/src/auth/sign_in_screen.dart';
import 'package:nectar_clone/src/home/home_screen.dart';
import 'package:nectar_clone/src/utils/utils.dart';
import 'package:nectar_clone/src/widgets/widgets.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isPasswordVisible = true;
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isValidEmail(String email) {
    setState(() {});
    return email.contains('@') && email.contains('.');
  }

  void _toggleVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset('assets/icon/icon.png', height: 48),
              ),
              const SizedBox(height: 100),
              const Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  color: Color(AppColor.primaryTextColor),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Enter your credentials to continue',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(AppColor.secondaryTextColor),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              const Text(
                'Username',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(AppColor.secondaryTextColor),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _usernameController,
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 30),
              const Text(
                'Email',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(AppColor.secondaryTextColor),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _emailController,
                onChanged: _isValidEmail,
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(fontSize: 18),
                decoration: InputDecoration(
                  suffixIcon: _isValidEmail(_emailController.text)
                      ? const Icon(
                          Icons.check_rounded,
                          color: Color(AppColor.primaryColor),
                        )
                      : null,
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Password',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(AppColor.secondaryTextColor),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _passwordController,
                obscureText: _isPasswordVisible,
                style: const TextStyle(fontSize: 18),
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: _toggleVisibility,
                    icon: Icon(
                      _isPasswordVisible
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Wrap(
                children: [
                  const Text(
                    'By continuing you agree to our ',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(AppColor.secondaryTextColor),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Terms of Service ',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(AppColor.primaryColor),
                      ),
                    ),
                  ),
                  const Text(
                    'and ',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(AppColor.secondaryTextColor),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Privacy Policy.',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(AppColor.primaryColor),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              ReusablePrimaryButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                    (route) => false,
                  );
                },
                title: 'Sign Up',
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(AppColor.primaryTextColor),
                    ),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => const SignInScreen(),
                        ),
                        (route) => false,
                      );
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(AppColor.primaryColor),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
