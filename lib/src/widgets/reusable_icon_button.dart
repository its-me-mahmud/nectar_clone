import 'package:flutter/material.dart';

class ReusableIconButton extends StatelessWidget {
  const ReusableIconButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.width = 364,
    required this.imageUrl,
    required this.color,
  });

  final String title;
  final VoidCallback onPressed;
  final double width;
  final String imageUrl;
  final int color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          Color(color),
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
      icon: Image.asset(imageUrl),
      label: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
