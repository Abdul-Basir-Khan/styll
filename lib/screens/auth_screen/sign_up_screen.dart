import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:styyl/screens/auth_screen/sign_in_screen.dart';
import 'package:styyl/themes/app_colors.dart';
import 'package:styyl/themes/app_text_styles.dart';
import 'package:styyl/widgets/custom_buttom.dart';
import 'package:styyl/widgets/custom_textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String _selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:
    Container(
      height: MediaQuery.sizeOf(context).height*1,
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/auth_screen/signup.png"))
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height*0.90,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Text(
                  'Sign Up',
                  style: AppTextStyles.boldStyle.copyWith( color: Colors.white,
                    fontSize: 30,)
              ),
              Text(
                  'Create an account',
                  style: AppTextStyles.regularStyle.copyWith(  color: Colors.white,
                    fontSize: 15,)
              ),
              const SizedBox(height: 60,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                      'I am a Individual',
                      style:AppTextStyles.semiBoldStyle.copyWith( color: Colors.white,
                        fontSize: 15,)
                  ),
                  Radio<String>(
                    value: 'Option 1',
                    groupValue: _selectedValue,
                    onChanged: (String? value) {
                      setState(() {
                        _selectedValue = value!;
                      });
                    },
                  ),

                  Text(
                      'I am a Seller',
                      style:AppTextStyles.semiBoldStyle.copyWith( color: Colors.white,
                        fontSize: 15,)
                  ),
                  Radio<String>(
                    value: 'Option 2',
                    groupValue: _selectedValue,
                    onChanged: (String? value) {
                      setState(() {
                        _selectedValue = value!;
                      });
                    },
                  ),

                ],
              ),
              const SizedBox(height: 30,),
              CustomTextField(
                hintText: 'Username',
                hintTextColor: AppColors.primaryWhite,
                isFilled: true,
                isFilledColor: Colors.white.withOpacity(0.4000000059604645),
              ),
              const SizedBox(height: 25,),
              CustomTextField(
                hintText: 'Password',
                hintTextColor: AppColors.primaryWhite,
                isFilled: true,
                isFilledColor: Colors.white.withOpacity(0.4000000059604645),
              ),
              const SizedBox(height: 25,),
              CustomTextField(
                hintText: 'Confirm Password',
                hintTextColor: AppColors.primaryWhite,
                isFilled: true,
                isFilledColor: Colors.white.withOpacity(0.4000000059604645),
              ),
              const SizedBox(height: 25,),
              CustomButton(onTap: (){} , title: 'Sign Up', titleTextColor: Colors.white, buttonBgColor: const Color(0xff2F2F2F)),
              const SizedBox(height: 26,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignInScreen()));

                },
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: 'Already have an account? ',
                          style: AppTextStyles.regularStyle.copyWith(  color: Colors.white,
                            fontSize: 15,)
                      ),
                      TextSpan(
                          text: 'Login',
                          style: AppTextStyles.boldStyle.copyWith(   color: Colors.white,
                            fontSize: 15,)
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Spacer(),





            ],
          ),
        ),
      ),
    )

    );
  }
}
