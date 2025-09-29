import 'package:educational_system/core/utils/app_colors.dart';
import 'package:educational_system/core/utils/app_images.dart';
import 'package:educational_system/core/utils/app_router.dart';
import 'package:educational_system/core/utils/widgets/custom_app_bar.dart';
import 'package:educational_system/features/student/presentation/widgets/custom_bottom_bar.dart';
import 'package:educational_system/features/student/presentation/widgets/profile_edit_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileEditView extends StatelessWidget {
  const ProfileEditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(height: 70, backgroundColor: AppColors.primary),
      body: ProfileEditBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.floatingbutton,
        onPressed: () {},
        shape: const CircleBorder(), // يخليه دايرة مظبوطة
        child: Image.asset(Assets.imagesHeartSearch, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: CustomBottomBar(
        icon1: Assets.imagesHome2,
        icon2: Assets.imagesHeartSearch,
        name1: "Home",
        name2: "Explore",
        ontap1: () => GoRouter.of(context).push(AppRouter.kExploreView),
      ),
    );
  }
}
