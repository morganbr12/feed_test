import 'package:feed_test/src/core/share/app_icons/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Brunno Mass'),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {},
            splashColor: Colors.black.withOpacity(0.5),
            child: SvgPicture.asset(
              AppIcons.kSettingsIcon,
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              children: [
                SvgPicture.asset(AppIcons.kCamera2Icon),
                SizedBox(
                  width: ScreenUtil().screenWidth * 0.8,
                  child: TextFormField(
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        hintText: "Type something",
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                      ),
                  ),
                ),
                SvgPicture.asset(AppIcons.kSendIcon),
              ],
            ),
          )
        ],
      ),
    );
  }
}
