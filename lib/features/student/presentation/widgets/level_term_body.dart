import 'package:educational_system/core/utils/app_colors.dart';
import 'package:educational_system/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class LevelTermBody extends StatelessWidget {
  const LevelTermBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> subjectList = [
      "Physics",
      "Machine Learning",
      "intoduction in cs",
      "operating system",
    ];
    return Column(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          color: AppColors.primary,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Level 1 ", style: AppStyles.styleBold36),
                  Text(". first term", style: AppStyles.styleRegularWhite16),
                ],
              ),
            ],
          ),
        ),

        Transform.translate(
          offset: Offset(0, -65),
          child: Column(
            children: List.generate(
              4,
              (index) => Card(
                elevation: 6,
                child: Container(
                  height: 72,
                  width: 333,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0, left: 16),
                    child: Text(
                      subjectList[index],
                      style: AppStyles.styleMedium16,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
