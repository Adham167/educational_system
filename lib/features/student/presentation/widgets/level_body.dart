import 'package:educational_system/core/utils/app_colors.dart';
import 'package:educational_system/core/utils/app_router.dart';
import 'package:educational_system/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LevelBody extends StatelessWidget {
  const LevelBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          color: AppColors.primary,
          child: Column(
            children: [
              Text("Level 1", style: AppStyles.styleBold36),
              Spacer(flex: 2),
              Text("Choose your  Term", style: AppStyles.styleBold16),
              Spacer(flex: 2),
            ],
          ),
        ),

        Transform.translate(
          offset: Offset(0, -40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TermCard(
                title: "First",
                ontap:
                    () => GoRouter.of(context).push(AppRouter.kLevelTermView),
              ),
              SizedBox(width: 8),
              TermCard(
                title: "Second",
                ontap:
                    () => GoRouter.of(context).push(AppRouter.kLevelTermView),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TermCard extends StatelessWidget {
  const TermCard({super.key, required this.title, this.ontap});
  final String title;
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          height: 46,
          width: 157,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(title, style: AppStyles.styleMedium14),
            ),
          ),
        ),
      ),
    );
  }
}
