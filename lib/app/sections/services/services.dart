import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/configs/configs.dart';
import 'package:sizer/sizer.dart';

import '../../../changes/strings.dart';
import '../../../core/color/colors.dart';
import '../../../core/configs/others/space.dart';
import '../../../core/res/responsive.dart';
import '../../utils/services_utils.dart';
import '../../widgets/custom_text_heading.dart';

part 'services_desktop.dart';
part 'services_mobile.dart';
part 'widgets/_services_card.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ServiceMobile(),
      tablet: ServiceMobile(),
      desktop: ServiceDesktop(),
    );
  }
}
