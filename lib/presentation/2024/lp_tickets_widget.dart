import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../config/app_color.dart';
import 'lp_2024_model.dart';
import 'lp_base_container_2024.dart';

class Tickets2024Widget extends StatelessWidget {
  const Tickets2024Widget({super.key});
  @override
  Widget build(BuildContext context) {
    final isMobile = context.watch<LP2024Model>().isMobile;
    return LPBase2024Container(
      isMobile: isMobile,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SelectableText(
            'Tickets',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontSize: isMobile ? 42 : 156,
                  height: 1,
                ),
          ),
          const SizedBox(height: 16),
          SelectableText(
            'The ticket contains\n・2 days of FlutterNinjas💻\n・Asking the speakers🙋‍️\n・Coffee and some drinks☕️\n・Lunch for 2 days🍙\n・Dinner for 2nd day🥘\n・Pre-party🥳\n・flutterengineering.io from Majid Hajian📘\n・Slack community💬\n・Some special gifts🎁\n\nThe earlier you buy, the more you save.',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Colors.white,
                ),
          ),
          const SizedBox(height: 32),
          isMobile
              ? const Column(
                  children: [
                    EarlyBird(),
                    SizedBox(height: 32),
                    Regular(),
                    SizedBox(height: 32),
                    LateBird(),
                  ],
                )
              : const Row(
                  children: [
                    Expanded(
                      child: EarlyBird(),
                    ),
                    Expanded(
                      child: Regular(),
                    ),
                    Expanded(
                      child: LateBird(),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}

class EarlyBird extends StatelessWidget {
  const EarlyBird({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: null,
          child: Image.asset(
            'resources/images/early-bird.png',
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 4),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.ninjaBlack,
          ),
          onPressed: null,
          child: const Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'Sold Out',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}

class Regular extends StatelessWidget {
  const Regular({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: null,
          child: Image.asset(
            'resources/images/regular.png',
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 4),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.ninjaBlack,
          ),
          onPressed: null,
          child: const Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'Close',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}

class LateBird extends StatelessWidget {
  const LateBird({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: null,
          child: Opacity(
            opacity: 0.5,
            child: Image.asset(
              'resources/images/late-bird.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
        const SizedBox(height: 4),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.ninjaBlack,
          ),
          onPressed: null,
          child: const Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'Close',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}

class WithHotel extends StatelessWidget {
  const WithHotel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            launchUrlString(
                'https://ti.to/flutterninjas/tokyo-2024/with/with-hotel-jun-12th-15th-visa-support');
          },
          child: Image.asset(
            'resources/images/with-hotel.png',
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 4),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.ninjaBlack,
          ),
          onPressed: () {
            launchUrlString(
                'https://ti.to/flutterninjas/tokyo-2024/with/with-hotel-jun-12th-15th-visa-support');
          },
          child: const Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'Buy This',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}
