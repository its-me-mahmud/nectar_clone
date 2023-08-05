import 'package:flutter/material.dart';
import 'package:nectar_clone/src/utils/utils.dart';

class ReusableHeadline extends StatelessWidget {
  const ReusableHeadline(
    this.data, {
    super.key,
    required this.onTap,
  });

  final String data;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          data,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: Color(AppColor.primaryTextColor),
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: const Text(
            'See all',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(AppColor.primaryColor),
            ),
          ),
        ),
      ],
    );
  }
}
