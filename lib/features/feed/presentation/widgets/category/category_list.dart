import 'package:coordonate_app/features/feed/presentation/widgets/category/category_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryList extends StatefulWidget {
  List<String> categoryItems;
  CategoryList({super.key, required this.categoryItems});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.categoryItems.length,
        itemBuilder: (BuildContext context, index) {
          return CategoryButton(
            buttonText: widget.categoryItems[index],
          );
        });
  }
}
