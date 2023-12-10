import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_item_category.dart';

class ListItemCategory extends StatefulWidget {
  const ListItemCategory({super.key});

  @override
  State<ListItemCategory> createState() => _ListItemCategoryState();
}

class _ListItemCategoryState extends State<ListItemCategory> {
  final List<String> image = const [
    'assets/images/category/Asian.png',
    "assets/images/category/Burger.png",
    'assets/images/category/Donat.png',
    'assets/images/category/Mexican.png',
    'assets/images/category/Pizza.png',
    'assets/images/category/meat.png',
    'assets/images/category/Ice cream.png',
    'assets/images/category/cheese.png'
  ];
  final List<String> name = [
    'Asian',
    'Burger',
    'Donat',
    'Mexican',
    'Pizza',
    'Meat',
    'Ice cream',
    'Cheese'
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        itemCount: image.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              activeIndex = index;
              setState(() {});
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.5.r),
              child: CustomItemCategory(
                  isActive: activeIndex == index,
                  image: image[index],
                  title: name[index]),
            ),
          );
        },
      ),
    );
  }
}
