import 'package:flutter/material.dart';

import '../../../../../core/constant/styles_app.dart';

class AlreadyHavAnAccount extends StatelessWidget {
  const AlreadyHavAnAccount({
    super.key,
    required this.name,
    required this.nameButton,
    required this.colorName,
    required this.colorNameButton,
    required this.function,
  });

  final String name, nameButton;
  final Color colorName;
  final Color colorNameButton;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          name,
          style: Styles.textStyle16
              .copyWith(color: colorName, fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap: () {
            function();
          },
          child: Text(nameButton,
              style: Styles.textStyle16.copyWith(color: colorNameButton)),
        ),
      ],
    );
  }
}
