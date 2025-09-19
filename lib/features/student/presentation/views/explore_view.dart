import 'package:educational_system/core/utils/app_colors.dart';
import 'package:educational_system/core/utils/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(height: 70, backgroundColor: AppColors.primary),
    );
  }
}
