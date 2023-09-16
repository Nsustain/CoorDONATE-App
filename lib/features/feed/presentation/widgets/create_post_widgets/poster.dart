import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Poster extends StatelessWidget {
  final String? userPhoto;
  final String? userName;
  const Poster({super.key, required this.userName, required this.userPhoto});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            if (userPhoto != null)
              CircleAvatar(
                minRadius: 25.h,
                backgroundImage: NetworkImage(userPhoto!),
              ),
            SizedBox(
              width: 10.w,
            ),
            if (userName != null)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName!,
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          style: ButtonStyle(
                              minimumSize:
                                  MaterialStateProperty.all(Size(8.w, 8.h)),
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 210, 210, 210))),
                          onPressed: () {},
                          child: const Row(
                            children: [
                              Icon(Icons.people),
                              Text("Friends"),
                              Icon(Icons.arrow_drop_down)
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all(
                                Size(8.w, 8.h),
                              ),
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 210, 210, 210))),
                          onPressed: () {},
                          child: const Row(
                            children: [
                              Icon(Icons.add),
                              Text("Album"),
                              Icon(Icons.arrow_drop_down)
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
          ],
        ),
      ],
    );
  }
}
