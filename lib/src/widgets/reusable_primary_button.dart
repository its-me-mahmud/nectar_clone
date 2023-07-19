import 'package:flutter/material.dart';
import 'package:nectar_clone/src/utils/utils.dart';

class ReusablePrimaryButton extends StatelessWidget {
  const ReusablePrimaryButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.width = 364,
  });

  final String title;
  final VoidCallback onPressed;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(
          Color(AppColor.primaryButtonColor),
        ),
        fixedSize: MaterialStatePropertyAll(
          Size(width, 67),
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(19),
          ),
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
