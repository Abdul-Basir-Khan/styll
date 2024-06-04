import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../themes/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback  onTap;
  final Color titleTextColor;
  final Color buttonBgColor;
  final String  title;
  const CustomButton({super.key, required this.onTap, required this.title, required this.titleTextColor, required this.buttonBgColor});

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
      onTap: onTap,
      child: Container(
        height: 54,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color:buttonBgColor,),
        child: Text(
          title,
          style:AppTextStyles.mediumStyle.copyWith(
    color:titleTextColor,
    fontSize: 16,
    ),),
      ),
    );
  }
}
