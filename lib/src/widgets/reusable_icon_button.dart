import 'package:flutter/material.dart';

class ReusableIconButton extends StatelessWidget {
  const ReusableIconButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.width = 364,
    this.imageUrl,
    required this.color,
    this.showIcon = false,
    this.icon,
  });

  final String title;
  final VoidCallback onPressed;
  final double width;
  final String? imageUrl;
  final int color;
  final bool showIcon;
  final IconData? icon;

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
      icon: showIcon
          ? const Icon(Icons.email_outlined, size: 32)
          : Image.asset(imageUrl!),
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
