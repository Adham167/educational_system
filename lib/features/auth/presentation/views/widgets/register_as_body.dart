import 'package:educational_system/core/utils/app_images.dart';
import 'package:educational_system/core/utils/app_styles.dart';
import 'package:educational_system/features/auth/data/models/register_as_model.dart';
import 'package:educational_system/features/auth/presentation/views/widgets/register_as_item.dart';
import 'package:flutter/material.dart';

class RegisterAsbody extends StatelessWidget {
  const RegisterAsbody({super.key});

  final List<RegisterAsModel> registerList = const [
    RegisterAsModel(image: Assets.imagesStudent, name: "Student"),
    RegisterAsModel(image: Assets.imagesDoctor, name: "Doctor"),
    RegisterAsModel(image: Assets.imagesDemonstrator, name: "Demonstrator"),
    RegisterAsModel(image: Assets.imagesManagement, name: "Management"),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: [
          Text("Register As", style: AppStyles.styleBold33),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
                crossAxisSpacing: 12,
                mainAxisSpacing: 32,
              ),
              itemCount: registerList.length,
              itemBuilder: (context, index) {
                return RegisterAsItem(registerAsModel: registerList[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
