import 'package:flutter/material.dart';

class DropdownExample extends StatelessWidget {
  const DropdownExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: InputDecoration(
        labelText: "اختر من القائمة",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
      items: const [
        DropdownMenuItem(value: "option1", child: Text("اختيار 1")),
        DropdownMenuItem(value: "option2", child: Text("اختيار 2")),
        DropdownMenuItem(value: "option3", child: Text("اختيار 3")),
      ],
      onChanged: (value) {
        // هنا بتتعامل مع القيمة المختارة
        print("القيمة المختارة: $value");
      },
    );
  }
}
