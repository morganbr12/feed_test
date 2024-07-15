import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../share/app_icons/app_icons.dart';

class FeedTestAppBar extends StatelessWidget {
  const FeedTestAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10, top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Row(
                children: [
                  SvgPicture.asset(AppIcons.kLogo),
                  const Gap(10),
                  SvgPicture.asset(AppIcons.kCorrectIcon),
                ],
              ),
            ),
            SvgPicture.asset(AppIcons.kNotificationIcon),
          ],
        ),
      ),
    );
  }
}
