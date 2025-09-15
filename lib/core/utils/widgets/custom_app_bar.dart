import 'package:educational_system/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final Widget? action;
  final Color? backgroundColor;
  final bool hideBack;
  final double? height;
  const CustomAppBar({
    this.title,
    this.hideBack = false,
    this.action,
    this.backgroundColor,
    this.height,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ?? Colors.transparent,
      elevation: 0,
      centerTitle: true,
      automaticallyImplyLeading: false,
      toolbarHeight: height ?? 80,
      title: title ?? const Text(''),
      titleSpacing: 0,
      actions: [action ?? Container()],
      leading:
          hideBack
              ? null
              : IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: AppColors.backbutton,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    size: 21,
                    color: AppColors.primary,
                  ),
                ),
              ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height ?? 160);
}
