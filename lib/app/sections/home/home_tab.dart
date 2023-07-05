import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/sections/home/widgets/animation_text.dart';
import 'package:portfolio/core/theme/app_theme.dart';
import 'package:universal_html/html.dart ' as html;
import 'package:sizer/sizer.dart';

import '../../../changes/img.dart';
import '../../../changes/links.dart';
import '../../../changes/strings.dart';
import '../../../core/animations/entrance_fader.dart';
import '../../../core/animations/zoom_animation.dart';
import '../../../core/color/colors.dart';
import '../../../core/configs/others/app_typography.dart';
import '../../../core/configs/others/space.dart';
import '../../../core/res/responsive_size.dart';
import '../../widgets/color_chage_btn.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SizedBox(
      height: 50.h,
      child: Stack(
        children: [
          Positioned(
            right: 10.w,
            bottom: 20.w,
            child: const EntranceFader(
              offset: Offset(0, 0),
              delay: Duration(seconds: 1),
              duration: Duration(milliseconds: 800),
              child: ZoomAnimations(),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w, top: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      hellotag,
                      style: AppText.h3!
                          .copyWith(fontSize: isFontSize(context, 18)),
                    ),
                    EntranceFader(
                      offset: const Offset(0, 0),
                      delay: const Duration(seconds: 2),
                      duration: const Duration(milliseconds: 800),
                      child: Image.asset(StaticImage.hi, height: 10.sp),
                    ),
                  ],
                ),
                Space.y(1.w)!,
                Text(
                  yourname,
                  style: TextStyle(
                    fontSize: isFontSize(context, 38),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                EntranceFader(
                  offset: const Offset(-10, 0),
                  delay: const Duration(seconds: 1),
                  duration: const Duration(milliseconds: 800),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "A ",
                        style: TextStyle(
                          fontSize: isFontSize(context, 24),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      AnimatedTextKit(
                        animatedTexts: tabList,
                        isRepeatingAnimation: true,
                      ),
                    ],
                  ),
                ),
                Space.y(1.5.w)!,
                Space.y(2.w)!,
                ColorChageButton(
                  text: 'download cv',
                  onTap: () {
                    html.window.open(resume, "pdf");
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
