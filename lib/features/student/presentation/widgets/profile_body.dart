import 'package:educational_system/core/utils/app_colors.dart';
import 'package:educational_system/core/utils/app_images.dart';
import 'package:educational_system/core/utils/app_router.dart';
import 'package:educational_system/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> type = ["Old Material", "Demonstrator", "Doctors"];
    return Column(
      children: [
        Container(
          height: 250,
          width: double.infinity,
          color: AppColors.primary,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 8),
              CircleAvatar(
                radius: 45,
                child: Image.asset(Assets.imagesProfileImage1),
              ),
              SizedBox(height: 8),
              GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kProfileEditeView);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Mohamed Ahmed", style: AppStyles.styleBold24),
                    SizedBox(width: 8),
                    Image.asset(Assets.imagesEdit),
                  ],
                ),
              ),
            ],
          ),
        ),

        Transform.translate(
          offset: Offset(0, -75),
          child: Column(
            children: List.generate(
              type.length,
              (index) => ProfileTypeCard(type: type[index]),
            ),
          ),
        ),
      ],
    );
  }
}

class ProfileTypeCard extends StatelessWidget {
  const ProfileTypeCard({super.key, required this.type});

  final String type;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        height: 74,
        width: 333,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
          child: Text(type, style: AppStyles.styleMedium16),
        ),
      ),
    );
  }
}
