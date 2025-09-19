import 'package:educational_system/core/utils/app_colors.dart';
import 'package:educational_system/core/utils/app_styles.dart';
import 'package:educational_system/features/student/presentation/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class StudentBody extends StatelessWidget {
  const StudentBody({super.key});

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        children: [
          // الجزء الأزرق
          Container(
            height: 300,
            width: double.infinity,
            color: AppColors.primary,
            child: Padding(
              padding: const EdgeInsets.only(top: 64, left: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome, Ahmed 👋", style: AppStyles.styleBold16),
                  Text(
                    "Upgrade your skill for better futures!",
                    style: AppStyles.styleRegular12,
                  ),
                ],
              ),
            ),
          ),

          // هنا بنعمل مسافة عشان الكارد يركب فوق الهيدر
          Transform.translate(
            offset: const Offset(0, -120), // يخلي الكارد يطلع فوق شوية
            child: Column(
              children: List.generate(
                10, // عدد الكروت اللي انت عايزه
                (index) => Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: CardWidget(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
