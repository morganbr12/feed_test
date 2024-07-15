import 'package:feed_test/src/core/bottom_navbar/bloc/bottom_nav_bloc.dart';
import 'package:feed_test/src/features/create_post/bloc/create_post_bloc.dart';
import 'package:feed_test/src/features/home_page/bloc/home_bloc.dart';
import 'package:feed_test/src/features/landing_page/bloc/landing_page_bloc.dart';
import 'package:feed_test/src/models/post_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'src/features/landing_page/landing_page.dart';

void main() {
  runApp(const FeedApp());
}

class FeedApp extends StatelessWidget {
  const FeedApp({super.key});

  @override
  Widget build(BuildContext context) {
    final postModel = CreatedPostModel();
    return MultiBlocProvider(
      providers: [
        BlocProvider<LandingPageBloc>(
          create: (context) => LandingPageBloc(),
        ),
        BlocProvider<BottomNavBloc>(
          create: (context) => BottomNavBloc(),
        ),
        BlocProvider<CreatePostBloc>(
          create: (context) => CreatePostBloc(),
        ),
        BlocProvider<HomeBloc>(create: (context) => HomeBloc(postModel)..add(FetchPosts()))
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (context, child) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: LandingPage(),
          );
        },
      ),
    );
  }
}
