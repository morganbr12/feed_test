import 'package:feed_test/src/features/landing_page/bloc/landing_page_bloc.dart';
import 'package:feed_test/src/features/landing_page/landing_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget landingPageOutlet() {
  return BlocProvider<LandingPageBloc>(
    create: (context) => LandingPageBloc(),
    child: const LandingPage(),
  );
}
