import 'package:educational_system/features/student/presentation/widgets/student_body.dart';
import 'package:flutter/material.dart';

class StudentView extends StatelessWidget {
  const StudentView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: StudentBody());
  }
}
