import 'package:flutter/material.dart';
import 'package:nectar_clone/src/utils/utils.dart';

class ReusableProductItem extends StatelessWidget {
  const ReusableProductItem({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  final String imageUrl;
  final String title;
  final String subtitle;
  final double price;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(18),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset('assets/image/$imageUrl.png'),
              ),
              const SizedBox(height: 20),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(AppColor.primaryTextColor),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                '$subtitle, Price',
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(AppColor.secondaryTextColor),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${price.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(AppColor.primaryTextColor),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    borderRadius: const BorderRadius.all(
                      Radius.circular(17),
                    ),
                    child: Ink(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Color(AppColor.primaryColor),
                        borderRadius: BorderRadius.all(
                          Radius.circular(17),
                        ),
                      ),
                      child: const Icon(
                        Icons.add_rounded,
                        color: Colors.white,
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
