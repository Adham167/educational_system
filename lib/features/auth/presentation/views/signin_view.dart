import 'package:educational_system/features/auth/presentation/widgets/signin_body.dart';
import 'package:flutter/material.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SigninBody(),
    );
  }
}