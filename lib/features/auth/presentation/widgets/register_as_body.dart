import 'package:educational_system/core/utils/app_styles.dart';
import 'package:educational_system/features/auth/presentation/widgets/register_as_item_grid_view.dart';
import 'package:flutter/material.dart';

class RegisterAsbody extends StatelessWidget {
  const RegisterAsbody({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: [
          SizedBox(height: 120),
          Text("Register As", style: AppStyles.styleBold33),
          SizedBox(height: 64),
          RegisterAsItemGridView(),
        ],
      ),
    );
  }
}

