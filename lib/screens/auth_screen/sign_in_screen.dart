import 'package:flutter/material.dart';
import 'package:styyl/screens/auth_screen/sign_up_screen.dart';
import 'package:styyl/themes/app_colors.dart';
import 'package:styyl/themes/app_text_styles.dart';
import 'package:styyl/widgets/custom_buttom.dart';
import 'package:styyl/widgets/custom_textfield.dart';

import '../bottom_nav_app_bar/bottom_nav_app_bar.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/auth_screen/bg.png"))),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                      height: MediaQuery.sizeOf(context).height * 0.06,
                      width: MediaQuery.sizeOf(context).width * 0.40,
                      fit: BoxFit.fill,
                      image: const AssetImage("assets/images/auth_screen/Styyl.png")),
                  const SizedBox(
                    height: 70,
                  ),
                  CustomTextField(
                    hintText: 'Username',
                    hintTextColor: AppColors.primaryWhite,
                    isFilled: true,
                    isFilledColor: Colors.white.withOpacity(0.4000000059604645),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  CustomTextField(
                    hintText: 'Password',
                    hintTextColor: AppColors.primaryWhite,
                    isFilled: true,
                    isFilledColor: Colors.white.withOpacity(0.4000000059604645),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  CustomButton(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavAppBar()));


                      },
                      title: 'Log In',
                      titleTextColor: Colors.white,
                      buttonBgColor: const Color(0xff2F2F2F)),
                  const SizedBox(
                    height: 26,
                  ),

                  GestureDetector(
                    onTap: (){
                  },
                    child: Text('Forgot your password?',
                        style: AppTextStyles.regularStyle.copyWith(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SignUpScreen()));
              },
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: 'Don’t have an account? ',
                        style: AppTextStyles.regularStyle.copyWith(
                          color: Colors.white,
                          fontSize: 15,
                        )),
                    TextSpan(
                        text: 'Sign Up',
                        style: AppTextStyles.boldStyle.copyWith(
                          color: Colors.white,
                          fontSize: 15,
                        )),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    ));
  }
}
