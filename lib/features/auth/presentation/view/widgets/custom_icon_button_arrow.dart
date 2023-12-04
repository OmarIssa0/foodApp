import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class CustomIconButtonBack extends StatelessWidget {
  const CustomIconButtonBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Container(
          height: 38,
          width: 38,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(IconlyLight.arrow_left_2),
        ),
      ),
    );
  }
}
