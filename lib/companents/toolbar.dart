import 'package:flutter/material.dart';
import 'package:legba/styles/app_color.dart';
import 'package:legba/styles/app_text.dart';

class ToolBar extends StatelessWidget implements PreferredSizeWidget {
  ToolBar({super.key, required this.title, this.actions});

  String title;

  List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: AppText.header1,
      ),
      backgroundColor: AppColors.background,
      centerTitle: false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
