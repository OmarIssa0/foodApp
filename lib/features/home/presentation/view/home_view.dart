import 'package:flutter/material.dart';
import 'package:food_app/features/home/presentation/view/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  static String id = '/HomeView';
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),
    );
  }
}
