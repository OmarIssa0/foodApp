import 'package:flutter/material.dart';
import 'package:food_app/core/constant/color_app.dart';
import 'package:food_app/features/cart/presentation/view/cart_view.dart';
import 'package:food_app/features/home/presentation/view/home_view.dart';
import 'package:food_app/features/profile/presentation/view/profile_view.dart';
import 'package:iconly/iconly.dart';

import 'features/search/presentation/view/search_view.dart';

class RootView extends StatefulWidget {
  static String id = '/RootView';
  const RootView({super.key});

  @override
  State<RootView> createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
  late PageController controller;
  int currentScreen = 0;

  List<Widget> screen = [
    const HomeView(),
    const SearchView(),
    const CartView(),
    const ProfileView()
  ];

  @override
  void initState() {
    super.initState();
    controller = PageController(
      initialPage: currentScreen,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            currentScreen = index;
          });
          controller.jumpToPage(currentScreen);
        },
        selectedFontSize: 0,
        currentIndex: currentScreen,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(IconlyBold.home, color: Color(0xffD3D1D8)),
              activeIcon: Icon(IconlyBold.home, color: AppColor.kOrange),
              label: '',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
            icon: Icon(IconlyBold.search, color: Color(0xffD3D1D8)),
            activeIcon: Icon(IconlyBold.search, color: AppColor.kOrange),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(IconlyBold.bag, color: Color(0xffD3D1D8)),
              activeIcon: Icon(IconlyBold.bag, color: AppColor.kOrange),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(IconlyBold.profile, color: Color(0xffD3D1D8)),
              activeIcon: Icon(IconlyBold.profile, color: AppColor.kOrange),
              label: ''),
        ],
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: screen,
      ),
    );
  }
}
