import 'package:educational_system/core/utils/app_colors.dart';
import 'package:educational_system/core/utils/app_styles.dart';
import 'package:educational_system/features/student/presentation/widgets/doctors_list_view.dart';
import 'package:flutter/material.dart';

class ExploreBody extends StatelessWidget {
  const ExploreBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          color: AppColors.primary,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Doctors For Level 1", style: AppStyles.styleBold16),
                SizedBox(height: 16),
                DoctorsListView(),
                SizedBox(height: 8),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Choose your educational group",
                    style: AppStyles.styleBold16,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 8),
        Container(
          height: 46,
          width: 327,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(width: 2, color: Color(0XFFF3F4F6)),
            color: Colors.white,
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text("Level1", style: AppStyles.styleMedium14),
            ),
          ),
        ),
      ],
    );
  }
}
