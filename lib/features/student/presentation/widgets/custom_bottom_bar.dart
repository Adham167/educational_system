import 'package:educational_system/core/utils/app_images.dart';
import 'package:educational_system/core/utils/app_router.dart';
import 'package:educational_system/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      shape: const CircularNotchedRectangle(), // يعمل التجويف للنص
      notchMargin: 8, // مسافة بين التجويف والزرار
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => GoRouter.of(context).push(AppRouter.kExploreView),
              child: Column(
                children: [
                  Image.asset(Assets.imagesHeartSearch),
                  SizedBox(height: 8),

                  Text("Explore", style: AppStyles.styleRegular12),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Column(
                children: [
                  Image.asset(Assets.imagesUser),
                  SizedBox(height: 8),
                  Text("Profile", style: AppStyles.styleRegular12),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
