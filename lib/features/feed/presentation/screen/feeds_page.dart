import 'package:coordonate_app/core/common/bottom_navigation_bar.dart';
import 'package:coordonate_app/features/feed/presentation/widgets/category_list.dart';
import 'package:coordonate_app/features/feed/presentation/widgets/logo_button.dart';
import 'package:coordonate_app/features/feed/presentation/widgets/message_button.dart';
import 'package:coordonate_app/features/feed/presentation/widgets/notifications_button.dart';
import 'package:coordonate_app/features/feed/presentation/widgets/post_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeedsPage extends StatefulWidget {
  List<String> categoriesList = [
    'All',
    'Africa',
    'Asia',
    'Nelson',
    'Africa',
    'Asia',
    'Nelson',
    'Africa',
    'Asia',
    'Nelson'
  ];
  FeedsPage({super.key});

  @override
  State<FeedsPage> createState() => _FeedsPageState();
}

class _FeedsPageState extends State<FeedsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                LogoButton(),
                Expanded(child: Container()),
                NotificationsButton(),
                MessageButton(),
              ],
            ),
            CategoryList(categoryItems: widget.categoriesList),
            SizedBox(
              height: 30.h,
            ),
            PostCard()
          ],
        ),
      ),
      bottomNavigationBar: coorDonateBottomNavigationBar(),
    );
  }
}
