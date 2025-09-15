import 'package:educational_system/core/utils/app_images.dart';
import 'package:educational_system/core/utils/app_router.dart';
import 'package:educational_system/features/auth/data/models/register_as_model.dart';
import 'package:educational_system/features/auth/presentation/widgets/register_as_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterAsItemGridView extends StatefulWidget {
  const RegisterAsItemGridView({super.key});

  @override
  State<RegisterAsItemGridView> createState() => _RegisterAsItemGridViewState();
}

class _RegisterAsItemGridViewState extends State<RegisterAsItemGridView> {
  final List<RegisterAsModel> registerList = const [
    RegisterAsModel(image: Assets.imagesStudent, name: "Student"),
    RegisterAsModel(image: Assets.imagesDoctor, name: "Doctor"),
    RegisterAsModel(image: Assets.imagesDemonstrator, name: "Demonstrator"),
    RegisterAsModel(image: Assets.imagesManagement, name: "Management"),
  ];
  int isActive = 0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          crossAxisSpacing: 12,
          mainAxisSpacing: 32,
        ),
        itemCount: registerList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                if (isActive != index) {
                  isActive = index;
                }
              });
              GoRouter.of(context).push(AppRouter.kRegisterView);
            },
            child: RegisterAsItem(
              registerAsModel: registerList[index],
              isAtive: isActive == index,
            ),
          );
        },
      ),
    );
  }
}
