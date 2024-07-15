import 'package:feed_test/src/features/home_page/bloc/home_bloc.dart';
import 'package:feed_test/src/features/home_page/enum/selected_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class SelectOptionFeedButton extends StatelessWidget {
  final SelectedFeedOption activeSelectedOption;
  final String text;

  const SelectOptionFeedButton({
    required this.activeSelectedOption,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<HomeBloc, HomeState, SelectedFeedOption>(
      selector: (state) => state.selectedFeedOption,
      builder: (context, selectOption) {
        return GestureDetector(
          onTap: () {
            context.read<HomeBloc>().add(
                  UpdateSelectedFeedOption(
                      selectedFeedOption: activeSelectedOption),
                );
          },
          child: SizedBox(
            height: 29.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: activeSelectedOption == selectOption
                        ? const Color.fromRGBO(93, 196, 130, 1)
                        : const Color.fromRGBO(54, 73, 96, 1),
                  ),
                ),
                Gap(10.h),
                Container(
                  height: 1,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: activeSelectedOption != selectOption
                        ? null
                        : const Color.fromRGBO(93, 196, 130, 1),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
