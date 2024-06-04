import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';
class AppTextStyles {
  static  TextStyle boldStyle = GoogleFonts.openSans(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryBlack
  );
  static  TextStyle semiBoldStyle = GoogleFonts.openSans(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryBlack
  );
  static  TextStyle mediumStyle = GoogleFonts.openSans(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryBlack
  );
  static  TextStyle regularStyle = GoogleFonts.openSans(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.primaryBlack
  );
}