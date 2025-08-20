import 'package:educational_system/core/utils/app_images.dart';
import 'package:educational_system/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(Assets.imagesLogo1),
            SizedBox(height: 16),
            Text(
              "Login Into Zagazig University, Faculty of Computers and Information",
              style: AppStyles.styleSemiBold34,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
