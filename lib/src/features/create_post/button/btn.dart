import 'package:feed_test/src/features/create_post/enum/selected_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../bloc/create_post_bloc.dart';

class SelectOptionButton extends StatelessWidget {
  final SelectedOption activeSelectedOption;
  final String text;

  const SelectOptionButton({
    required this.activeSelectedOption,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<CreatePostBloc, CreatePostState, SelectedOption>(
      selector: (state) => state.selectedOption,
      builder: (context, selectOption) {
        return GestureDetector(
          onTap: () {
            context.read<CreatePostBloc>().add(
                  UpdateSelectedOption(selectedOption: activeSelectedOption),
                );
          },
          child: Container(
            height: 29.h,
            decoration: BoxDecoration(
                color: activeSelectedOption == selectOption
                    ? const Color.fromRGBO(93, 196, 130, 1)
                    : null,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: activeSelectedOption != selectOption
                      ? const Color.fromRGBO(54, 73, 96, 1)
                      : const Color.fromRGBO(93, 196, 130, 1),
                )),
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
                        ? Colors.white
                        : const Color.fromRGBO(54, 73, 96, 1),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
