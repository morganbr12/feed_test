import 'package:feed_test/src/core/share/app_icons/app_icons.dart';
import 'package:feed_test/src/features/home_page/button/btn.dart';
import 'package:feed_test/src/features/home_page/enum/selected_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../core/widgets/app_appbar.dart';
import '../../models/data/created_post.dart';
import 'bloc/home_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: FeedTestAppBar(),
      ),
      body: Column(
        children: [
          Gap(10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: ScreenUtil().screenWidth * 0.5,
                height: 29.h,
                child: const SelectOptionFeedButton(
                  activeSelectedOption: SelectedFeedOption.publicFeed,
                  text: 'Public Feed',
                ),
              ),
              SizedBox(
                width: ScreenUtil().screenWidth * 0.5,
                height: 29.h,
                child: const SelectOptionFeedButton(
                  activeSelectedOption: SelectedFeedOption.businessFeed,
                  text: 'Business Feed',
                ),
              ),
            ],
          ),
          Gap(10.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Feeds',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SvgPicture.asset(AppIcons.kFilterIcon),
              ],
            ),
          ),
          Gap(10.h),
          const Expanded(
            child: PostList(),
          ),
          Gap(60.h),
        ],
      ),
    );
  }
}

class PostList extends StatelessWidget {
  const PostList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.posts.isEmpty) {
          return const Center(child: Text("No posts available."));
        }
        return ListView.builder(
          itemCount: state.posts.length,
          itemBuilder: (context, index) {
            final post = state.posts[index];
            return _postItem(post);
          },
        );
      },
    );
  }

  Widget _postItem(CreatedPost post) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(236, 243, 246, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 15,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        AppImages.kImage1,
                        fit: BoxFit.cover,
                        height: 100,
                      ),
                    ),
                  ),
                  const Gap(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            post.creatorName,
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SvgPicture.asset(
                            AppIcons.kCorrectIcon,
                            height: 12.h,
                            width: 12.w,
                          ),
                          const Gap(13),
                          const Text(
                            '1 hour ago',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(20, 20, 20, 1),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        post.topic,
                        style: const TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                ],
              ),
              InkWell(
                onTap: () {},
                splashColor: Colors.black.withOpacity(0.5),
                child: SvgPicture.asset(AppIcons.kMenuIcon),
              ),
            ],
          ),
          const Gap(10),
          Text(
            post.description,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
            maxLines: post.imageUrl == null ? 7 : 2,
            overflow: TextOverflow.ellipsis,
          ),
          Gap(10.h),
          post.imageUrl == null
              ? const SizedBox.shrink()
              : SizedBox(
                  width: double.infinity,
                  height: 224.h,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      post.imageUrl.toString(),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
          Gap(20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(AppIcons.kLikeIcon),
                  Gap(10.h),
                  SvgPicture.asset(AppIcons.kCommentIcon),
                  Gap(10.h),
                  SvgPicture.asset(AppIcons.kShareIcon),
                ],
              ),
              SvgPicture.asset(AppIcons.kMarkIcon),
            ],
          ),
        ],
      ),
    );
  }
}
