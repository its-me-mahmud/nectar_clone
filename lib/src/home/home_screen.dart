import 'package:flutter/material.dart';
import 'package:nectar_clone/src/home/widgets/widgets.dart';
import 'package:nectar_clone/src/utils/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final _screens = [const ProductList()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _screens),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon/shop.png',
              color: _currentIndex == 0
                  ? const Color(AppColor.primaryColor)
                  : null,
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon/explore.png',
              color: _currentIndex == 1
                  ? const Color(AppColor.primaryColor)
                  : null,
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon/cart.png',
              color: _currentIndex == 2
                  ? const Color(AppColor.primaryColor)
                  : null,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon/favourite.png',
              color: _currentIndex == 3
                  ? const Color(AppColor.primaryColor)
                  : null,
            ),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon/account.png',
              color: _currentIndex == 4
                  ? const Color(AppColor.primaryColor)
                  : null,
            ),
            label: 'Account',
          ),
        ],
        onTap: (value) => setState(() => _currentIndex = value),
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(AppColor.primaryColor),
        selectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
