import 'package:educational_system/core/utils/app_colors.dart';
import 'package:educational_system/core/utils/app_input_decorations.dart';
import 'package:educational_system/core/utils/app_router.dart';
import 'package:educational_system/core/utils/app_styles.dart';
import 'package:educational_system/core/utils/widgets/custom_elevated_button.dart';
import 'package:educational_system/core/utils/widgets/custom_text.dart';
import 'package:educational_system/features/auth/presentation/manager/level_cubit/level_cubit.dart';
import 'package:educational_system/features/auth/presentation/manager/register_type_cubit/register_type_cubit.dart';
import 'package:educational_system/features/auth/presentation/widgets/cutom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LevelCubit()),
        BlocProvider(create: (context) => RegisterTypeCubit()),
      ],
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: ListView(
            children: [
              SizedBox(height: 32),
              Align(
                alignment: Alignment.center,
                child: Text("Register Now", style: AppStyles.styleBold33),
              ),
              SizedBox(height: 64),
              CustomTextField(message: "Full Name"),
              SizedBox(height: 16),
              CustomTextField(message: "ُEmail Address"),
              SizedBox(height: 16),
              CustomTextField(message: "Phone Number"),
              SizedBox(height: 16),
              CustomTextField(
                message: "Password",
                icon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.visibility_off),
                ),
              ),
              SizedBox(height: 16),
              CustomTextField(
                message: "Confirm Password",
                icon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.visibility_off),
                ),
              ),
              SizedBox(height: 16),
              BlocBuilder<LevelCubit, String>(
                builder: (context, state) {
                  return DropdownButtonFormField(
                    value: state,
                    items:
                        ['Inter Mediate', 'Beginner', 'Profissional', 'Master']
                            .map(
                              (level) => DropdownMenuItem(
                                value: level,
                                child: Text(
                                  level,
                                  style: AppStyles.styleRegular13,
                                ),
                              ),
                            )
                            .toList(),
                    onChanged: (value) {
                      BlocProvider.of<LevelCubit>(context).selectLevel(value!);
                    },

                    decoration: AppInputDecorations.inputDecoration(
                      hint: "Level",
                    ),
                    icon: Icon(Icons.keyboard_arrow_down, size: 30),
                  );
                },
              ),
              SizedBox(height: 16),
              BlocBuilder<RegisterTypeCubit, String>(
                builder: (context, state) {
                  return DropdownButtonFormField(
                    value: state,
                    items:
                        ['Doctor', 'Student', 'Demonstrator', 'Management']
                            .map(
                              (type) => DropdownMenuItem(
                                value: type,
                                child: Text(
                                  type,
                                  style: AppStyles.styleRegular13,
                                ),
                              ),
                            )
                            .toList(),
                    onChanged: (value) {
                      BlocProvider.of<RegisterTypeCubit>(
                        context,
                      ).registerType(value!);
                    },
                    decoration: AppInputDecorations.inputDecoration(
                      hint: "Level",
                    ),
                    icon: Icon(Icons.keyboard_arrow_down, size: 30),
                  );
                },
              ),
              SizedBox(height: 64),

              CustomElevatedButton(
                text: "REGISTER",
                textStyle: AppStyles.styleRegularWhite16,
                ontap: () {},
                color: AppColors.primary,
                Width: MediaQuery.of(context).size.width,
              ),
              SizedBox(height: 16),
              Align(
                alignment: Alignment.center,
                child: CustomText(
                  text1: "Already Have an Account? ",
                  text2: "Sign In Here",
                  ontap1:
                      () => GoRouter.of(
                        context,
                      ).pushReplacement(AppRouter.kSigninView),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
