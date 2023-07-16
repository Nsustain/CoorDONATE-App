import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryList extends StatefulWidget {
  final List<String> categoryItems;
  CategoryList({Key? key, required this.categoryItems}) : super(key: key);

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.categoryItems.length,
          itemBuilder: (BuildContext context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.h),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 2.h),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        _selectedIndex == index ? Colors.red : Colors.white,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.h),
                    ),
                  ),
                  child: Text(
                    '${widget.categoryItems[index]}',
                    style: TextStyle(
                      fontSize: 20.sp,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
