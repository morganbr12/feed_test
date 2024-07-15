import 'package:feed_test/src/core/bottom_navbar/bloc/bottom_nav_bloc.dart';
import 'package:feed_test/src/features/landing_page/bloc/landing_page_bloc.dart';
import 'package:feed_test/src/features/home_page/home_page.dart';
import 'package:feed_test/src/features/profile_page/profile_page.dart';
import 'package:feed_test/src/features/search_page/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../core/share/app_colors/app_color.dart';
import '../create_post/create_post.dart';
import '../chat_page/chat_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  late List<Widget> _screens;
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    context.read<BottomNavBloc>().add(const GetNavItem());

    _screens = <Widget>[
      const HomePage(),
      const SearchPage(),
      const CreatePostPage(),
      const ChatPage(),
      const ProfilePage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PopScope(
        child: Stack(
          children: [
            Positioned(
              child: Scaffold(
                body: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _pageController,
                  children: [..._screens],
                ),
              ),
            ),
            _bottomNav(context),
          ],
        ),
      ),
    );
  }

  BlocBuilder _bottomNav(BuildContext context) {
    return BlocBuilder<LandingPageBloc, LandingPageState>(
      builder: (context, landingPageState) {
        return AnimatedPositioned(
          bottom: landingPageState.isNavBarVisible ? -100.h : 0,
          left: 0,
          right: 0,
          duration: const Duration(milliseconds: 300),
          child: BlocBuilder<BottomNavBloc, BottomNavState>(
            builder: (context, state) {
              return Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: state.bottomNavList
                        .asMap()
                        .entries
                        .map(
                          (navItem) => InkWell(
                            onTap: () {
                              if (navItem.key == 2) {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (_) => const CreatePostPage(),
                                  ),
                                );
                              } else if (navItem.key == 3) {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (_) => const ChatPage(),
                                  ),
                                );
                              } else {
                                if (navItem.key != state.navSelectedIndex) {
                                  context.read<BottomNavBloc>().add(
                                        UpdateNavSelectedIndex(
                                          index: navItem.key,
                                          isActive: navItem.value.isActive,
                                        ),
                                      );
                                }
                                _pageController.jumpToPage(
                                  navItem.key,
                                );
                              }
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    SvgPicture.asset(
                                      navItem.value.activeIcon,
                                      height: 20.h,
                                      width: 20.h,
                                      color: navItem.value.isActive
                                          ? AppColors.kPrimaryColor
                                          : AppColors.kSecondaryColor,
                                    ),
                                    const Gap(5),
                                    Text(
                                      navItem.value.iconName,
                                      style: TextStyle(
                                        color: navItem.value.isActive
                                            ? AppColors.kPrimaryColor
                                            : AppColors.kSecondaryColor,
                                      ),
                                    ),
                                    const Gap(5),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
