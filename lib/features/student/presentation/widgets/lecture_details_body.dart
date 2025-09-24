import 'package:educational_system/core/utils/app_images.dart';
import 'package:educational_system/core/utils/app_styles.dart';
import 'package:educational_system/features/student/presentation/widgets/expandable_text.dart';
import 'package:flutter/material.dart';

class LectureDetailsBody extends StatelessWidget {
  const LectureDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(Assets.imagesVideo1),
        SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Introduction to programming", style: AppStyles.styleBold20),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 0),
                leading: Image.asset(Assets.imagesDoctor11),
                title: Text("DR.", style: AppStyles.styleSemiBold14),
                subtitle: Text("Ahmed", style: AppStyles.styleMedium13),
              ),
              Text("Description", style: AppStyles.styleSemiBold15),
              ExpandableText(
                text:
                    "Lorem ipsum dolor sit amet consectetur. Quisque  drasut  frtyhyhp hdhyunbh pellentesque nec quisque amet proin elit amet. Lorem ipsum dolor sit ametasde consectetur. Quisque  drasut  frtyhyhp hdhyunbhsds pellentesque nec quisque amet proin elit ame rtbavnah nhuth btydgb",
                trimLength: 250,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
