import 'package:flutter/material.dart';
import 'package:nectar_clone/src/utils/utils.dart';

class ReusableProductCategory extends StatelessWidget {
  const ReusableProductCategory(
    this.title, {
    super.key,
    required this.imageUrl,
    required this.color,
  });

  final String title;
  final String imageUrl;
  final int color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(20),
        width: 250,
        decoration: BoxDecoration(
          color: Color(color).withOpacity(0.10),
          borderRadius: const BorderRadius.all(
            Radius.circular(18),
          ),
        ),
        child: Row(
          children: [
            Image.asset('assets/image/$imageUrl.png'),
            const SizedBox(width: 8),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(AppColor.secondaryTextColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
