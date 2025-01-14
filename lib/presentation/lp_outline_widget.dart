import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../config/app_color.dart';
import 'lp_base_container.dart';
import 'lp_model.dart';

class OutlineWidget extends StatelessWidget {
  const OutlineWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LPModel>().isMobile;
    return LPBaseContainer(
      isMobile: isMobile,
      padding: isMobile
          ? const EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 32,
            )
          : const EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 64,
            ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SelectableText(
            '''🥷Date
May 29 (Thu) - 30 (Fri), 2025

🥷Location
Tokyo, Japan
docomo R&D OPEN LAB ODAIBA
            ''',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
          ),
        ],
      ),
    );
  }
}

class FeatureListTile extends StatelessWidget {
  const FeatureListTile({
    super.key,
    required this.title,
    required this.description,
  });
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LPModel>().isMobile;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          title,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: isMobile ? 28 : 48,
                fontWeight: FontWeight.bold,
                color: AppColor.primaryBlue,
              ),
        ),
        const SizedBox(
          height: 8,
        ),
        SelectableText(
          description,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
        ),
      ],
    );
  }
}
