import 'package:coordonate_app/core/common/bottom_navigation_bar.dart';
import 'package:coordonate_app/dependency_injection.dart';
import 'package:coordonate_app/features/feed/presentation/bloc/feed/feed_bloc.dart';
import 'package:coordonate_app/features/feed/presentation/widgets/category_list.dart';
import 'package:coordonate_app/features/feed/presentation/widgets/logo_button.dart';
import 'package:coordonate_app/features/feed/presentation/widgets/message_button.dart';
import 'package:coordonate_app/features/feed/presentation/widgets/notifications_button.dart';
import 'package:coordonate_app/features/feed/presentation/widgets/post_card.dart';
import 'package:coordonate_app/features/feed/presentation/widgets/posts_list.dart';
import 'package:coordonate_app/utils/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

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
    return BlocProvider(
      create: (_) => sl<FeedBloc>()..add(GetFeedsEvent()),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20.h, left: 10.w, right: 10.w),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const LogoButton(),
                        Expanded(child: Container()),
                        const NotificationsButton(),
                        const MessageButton(),
                      ],
                    ),
                    CategoryList(categoryItems: widget.categoriesList),
                  ],
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              BlocBuilder<FeedBloc, FeedState>(builder: (context, state) {
                if (state is LoadingFeedState) {
                  return Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: LoadingAnimationWidget.flickr(
                          leftDotColor: const Color(0xFF1A1A3F),
                          rightDotColor: kPrimaryColor,
                          size: 35.h,
                        ),
                      ),
                    ],
                  );
                } else if (state is LoadedFeedState) {
                  // print('============================================');
                  // print(state.postsEntity.posts!.length);
                  // print(state.postsEntity);
                  return ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: state.postsEntity.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            PostCard(
                                postUserEntity:
                                    state.postsEntity[index].postUserEntity,
                                postEntity: state.postsEntity[index]),
                            // if (index != state.postsEntity.length - 1)
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 218, 218, 218)),
                            )
                          ],
                        );
                      });
                  // PostsList(postsEntity: state.postsEntity);
                } else if (state is ErrorFeedState) {
                  return Center(child: Text(state.message));
                } else {
                  return const Center(
                    child: Text('No message'),
                  );
                }
              }),
            ],
          ),
        ),
      ),
    );
  }
}
