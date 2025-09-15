import 'package:educational_system/features/auth/presentation/widgets/register_as_body.dart';
import 'package:flutter/material.dart';

class RegisterAsView extends StatelessWidget {
  const RegisterAsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: RegisterAsbody()));
  }
}
