import 'dart:math';

import 'package:flutter/material.dart';

class CircleProgressPainter extends CustomPainter {
  final double progress;
  final Color color;

  CircleProgressPainter({required this.progress, required this.color, required Color backgroundColor});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    // رسم الجزء المكتمل من الدائرة
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -90 * (pi / 180), // البدء من الأعلى
      2 * pi * progress, // الزاوية بناءً على التقدم
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}