import 'package:flutter/material.dart';
import '../../../themes/app_colors.dart';
import '../themes/app_text_styles.dart';

class ButtonWithIcon extends StatelessWidget {
  final VoidCallback  onTap;
  final String  title;
  final Widget   icon;
  const ButtonWithIcon({Key? key, required this.onTap, required this.title, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.primaryColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: AppTextStyles.mediumStyle.copyWith(color: AppColors.primaryWhite,fontSize: 15),
            ),

          const Spacer(),
            icon ,

          ],
        ),
      ),
    );
  }
}
