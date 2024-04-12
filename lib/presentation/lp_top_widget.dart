import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../config/app_color.dart';
import 'lp_base_container.dart';
import 'lp_model.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceType = context.watch<LPModel>().deviceScreenType;
    final isMobile = deviceType == DeviceScreenType.mobile;

    return LPBaseContainer(
      color: AppColor.backgroundNavy,
      isMobile: isMobile,
      padding: const EdgeInsets.symmetric(
        vertical: 0,
      ),
      child: Image.asset(
        'resources/images/FlutterNinjas-header-1.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
