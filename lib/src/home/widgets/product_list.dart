import 'package:flutter/material.dart';
import 'package:nectar_clone/src/home/widgets/widgets.dart';
import 'package:nectar_clone/src/utils/utils.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  const SizedBox(height: 25),
                  Image.asset('assets/icon/icon.png', height: 28),
                  const SizedBox(height: 8),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_pin,
                        color: Color(AppColor.secondaryTextColor),
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Dhaka, Banasree',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(AppColor.secondaryTextColor),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SearchBar(
                    elevation: const MaterialStatePropertyAll(0),
                    backgroundColor: const MaterialStatePropertyAll(
                      Color(0xfff2f3f2),
                    ),
                    leading: Image.asset(
                      'assets/icon/search.png',
                      color: const Color(AppColor.secondaryTextColor),
                    ),
                    hintText: 'Search Store',
                    hintStyle: const MaterialStatePropertyAll(
                      TextStyle(
                        color: Color(AppColor.secondaryTextColor),
                      ),
                    ),
                    shape: const MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Image.asset('assets/image/banner.png'),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ReusableHeadline('Exclusive Offer', onTap: () {}),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReusableProductItem(
                      imageUrl: 'fruit/banana',
                      title: 'Organic Bananas',
                      subtitle: '7pcs',
                      price: 4.99,
                    ),
                    SizedBox(width: 8),
                    ReusableProductItem(
                      imageUrl: 'fruit/apple',
                      title: 'Red Apple',
                      subtitle: '1kg',
                      price: 5.49,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ReusableHeadline('Best Selling', onTap: () {}),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReusableProductItem(
                      imageUrl: 'vegetable/pepper',
                      title: 'Bell Pepper Red',
                      subtitle: '1kg',
                      price: 5.55,
                    ),
                    SizedBox(width: 8),
                    ReusableProductItem(
                      imageUrl: 'vegetable/ginger',
                      title: 'Ginger',
                      subtitle: '250gm',
                      price: 2.99,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ReusableHeadline('Groceries', onTap: () {}),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReusableProductCategory(
                      'Pulses',
                      imageUrl: 'grocery/pulses',
                      color: 0xfff8a44c,
                    ),
                    SizedBox(width: 10),
                    ReusableProductCategory(
                      'Rice',
                      imageUrl: 'grocery/rice',
                      color: AppColor.primaryColor,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReusableProductItem(
                      imageUrl: 'meat/beef',
                      title: 'Beef Bone',
                      subtitle: '1kg',
                      price: 15.75,
                    ),
                    SizedBox(width: 8),
                    ReusableProductItem(
                      imageUrl: 'meat/chicken',
                      title: 'Broiler Chicken',
                      subtitle: '1kg',
                      price: 4.50,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
