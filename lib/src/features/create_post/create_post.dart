import 'package:feed_test/src/core/share/app_icons/app_icons.dart';
import 'package:feed_test/src/features/create_post/bloc/create_post_bloc.dart';
import 'package:feed_test/src/features/create_post/enum/selected_enum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import 'button/btn.dart';

class CreatePostPage extends StatefulWidget {
  const CreatePostPage({super.key});

  @override
  State<CreatePostPage> createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Create Post',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {},
            splashColor: const Color.fromRGBO(93, 196, 130, .5),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(93, 196, 130, 1),
                borderRadius: BorderRadius.circular(7),
              ),
              child: const Text(
                'Post',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Gap(20.w)
        ],
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: ScreenUtil().screenWidth * 0.4,
                    child: const SelectOptionButton(
                      activeSelectedOption: SelectedOption.public,
                      text: "Public",
                    ),
                  ),
                  const Gap(35),
                  SizedBox(
                    width: ScreenUtil().screenWidth * 0.4,
                    child: const SelectOptionButton(
                      activeSelectedOption: SelectedOption.business,
                      text: "Business",
                    ),
                  )
                ],
              ),
              const Gap(20),
              _textField(),
            ],
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Text(
                    "Topic",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(20, 20, 20, 1),
                    ),
                  ),
                ),
                Gap(10.h),
                _selectField(),
                Gap(10.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () => context.read<CreatePostBloc>().add(const UpdateImageFile('camera')),
                        child: SvgPicture.asset(AppIcons.kCameraIcon),
                      ),
                      Gap(10.w),
                      GestureDetector(
                        onTap: () => context.read<CreatePostBloc>().add(const UpdateImageFile('gallery')),
                        child: SvgPicture.asset(AppIcons.kGalleryIcon),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Builder _textField() {
    return Builder(
      builder: (_) => const Padding(
        padding: EdgeInsets.only(left: 15.0, right: 15.0),
        child: TextField(
          maxLines: 8,
          cursorColor: Colors.black,
          decoration: InputDecoration(
            hintText: 'Type Something...',
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }

  Builder _selectField() {
    return Builder(builder: (_) {
      return SizedBox(
        height: 40.h,
        child: BlocBuilder<CreatePostBloc, CreatePostState>(
          builder: (context, state) {
            return ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) {
                final isSelected = state.selectedIndices.contains(i);
                return GestureDetector(
                  onTap: () {
                    context.read<CreatePostBloc>().add(UpdateTopicSelected(i));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    margin: const EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                      color: isSelected ? const Color.fromRGBO(93, 196, 130, 1) : null, // Change color when selected
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: const Color.fromRGBO(54, 73, 96, 1),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Conscious Art sustainability",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      );
    });
  }

}
