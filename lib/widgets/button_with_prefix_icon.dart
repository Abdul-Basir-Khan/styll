import 'package:flutter/material.dart';
import '../../../themes/app_colors.dart';
import '../themes/app_text_styles.dart';

class ButtonWithPrefixIcon extends StatelessWidget {
  final VoidCallback  onTap;
  final String  title;
  final Widget   icon;
  const ButtonWithPrefixIcon({Key? key, required this.onTap, required this.title, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.borderColor),
            borderRadius: BorderRadius.circular(10),
            color: AppColors.primaryWhite),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon ,
            const SizedBox(width: 10,),
            Text(
              title,
              style: AppTextStyles.regularStyle.copyWith(color: AppColors.navBlack,fontSize: 15),
            ),



          ],
        ),
      ),
    );
  }
}
