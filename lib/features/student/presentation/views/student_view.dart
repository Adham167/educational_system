import 'package:educational_system/core/utils/app_colors.dart';
import 'package:educational_system/core/utils/app_images.dart';
import 'package:educational_system/core/utils/app_router.dart';
import 'package:educational_system/features/student/presentation/widgets/custom_bottom_bar.dart';
import 'package:educational_system/features/student/presentation/widgets/student_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StudentView extends StatelessWidget {
  const StudentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: const StudentBody(),

      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.floatingbutton,
        onPressed: () {},
        shape: const CircleBorder(), // يخليه دايرة مظبوطة
        child: Image.asset(Assets.imagesHome1),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: CustomBottomBar(
        icon1: Assets.imagesHeartSearch,
        icon2: Assets.imagesUser,
        name1: "Explore",
        name2: "Profile",
        ontap1: () => GoRouter.of(context).push(AppRouter.kExploreView),
      ),
    );
  }
}
