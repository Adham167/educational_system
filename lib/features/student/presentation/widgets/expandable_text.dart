import 'package:educational_system/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  final int trimLength; // عدد الحروف قبل ما يختصر
  const ExpandableText({super.key, required this.text, this.trimLength = 5000});

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final isLong = widget.text.length > widget.trimLength;
    final displayText =
        isExpanded
            ? widget.text
            : (isLong
                ? "${widget.text.substring(0, widget.trimLength)}..."
                : widget.text);

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: displayText, style: AppStyles.styleRegular11),
          if (isLong)
            WidgetSpan(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                child: Text(
                  isExpanded ? " Read Less" : " Read More...",
                  style: AppStyles.styleMediumB11,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
