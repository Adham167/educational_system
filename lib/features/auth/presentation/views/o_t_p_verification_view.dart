import 'package:educational_system/features/auth/presentation/views/widgets/o_t_p_verification_body.dart';
import 'package:flutter/material.dart';

class OTPVerificationView extends StatelessWidget {
  const OTPVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OTPVerificationBody(),
    );
  }
}

