import 'package:educational_system/core/utils/app_images.dart';
import 'package:educational_system/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              CircleAvatar(
                radius: 30,
                child: Image.asset(Assets.imagesComment1),
              ),
              SizedBox(height: 8),
              Text("doc${index + 1}", style: AppStyles.styleMedium11),
            ],
          );
        },
        separatorBuilder: (context, index) => SizedBox(width: 16),
        itemCount: 10,
      ),
    );
  }
}
