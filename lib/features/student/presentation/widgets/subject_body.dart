import 'package:educational_system/core/utils/app_colors.dart';
import 'package:educational_system/core/utils/app_images.dart';
import 'package:educational_system/core/utils/app_router.dart';
import 'package:educational_system/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SubjectBody extends StatelessWidget {
  const SubjectBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          color: AppColors.primary,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text("Physics lectures", style: AppStyles.styleBold16),
          ),
        ),
        Transform.translate(
          offset: Offset(0, -170),
          child: LectureCardListView(),
        ),
      ],
    );
  }
}

class LectureCardListView extends StatelessWidget {
  const LectureCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [Assets.imagesPhotoLec1, Assets.imagesPhotoLec2];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        height: 270,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap:
                  () =>
                      GoRouter.of(context).push(AppRouter.kLectureDetailsView),
              child: LectureCard(image: images[index]),
            );
          },
          separatorBuilder: (context, index) => SizedBox(width: 8),
          itemCount: 2,
        ),
      ),
    );
  }
}

class LectureCard extends StatelessWidget {
  const LectureCard({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 256,
        width: 256,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(image),
              SizedBox(height: 6),
              Text("lec 1", style: AppStyles.styleSemiBold14),
              SizedBox(height: 2),
              Text("Description", style: AppStyles.styleRegular12),
              SizedBox(height: 2),
              Text("10/10/2024 3:15", style: AppStyles.styleLight10),
              Align(
                alignment: Alignment.bottomRight,
                child: Text("Dr.Ahmed", style: AppStyles.styleMedium16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
