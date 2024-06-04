import 'package:flutter/material.dart';
import 'package:styyl/themes/app_text_styles.dart';
import 'package:styyl/widgets/custom_buttom.dart';
import 'package:styyl/widgets/custom_textfield.dart';

import '../../../../themes/app_colors.dart';

class MessageBox extends StatelessWidget {
  const MessageBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEFF4FB),
      appBar: AppBar(
        backgroundColor: Colors.transparent,elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios,color: AppColors.navBlack,)),

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(15),
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 35,
                   child: Image.asset("assets/images/home/Ellipse 26.png"),
                  ),
                ),
                const SizedBox(height: 15,),
                Center(
                  child: Text(
                    '@Jane',
                    style: AppTextStyles.regularStyle.copyWith(   color: Colors.black,
                      fontSize: 20,)
                  ),
                ),
                const SizedBox(height: 10,),
                Center(
                  child: Text(
                    'View Profile',
                    style: AppTextStyles.semiBoldStyle.copyWith( color: const Color(0xFF848484),
                      fontSize: 16,)
                  ),
                ),
                const SizedBox(height: 40,),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 15,
                      child: Image.asset("assets/images/home/Ellipse 26.png"),
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: const BoxDecoration(
                            color: Color(0xffEFF4FB)
                          ),
                          child: Text(
                            'Hey! how are you?',
                            style:AppTextStyles.semiBoldStyle.copyWith(  color: const Color(0xFF575757),
                              fontSize: 18,)
                          ),
                        ),
                        const SizedBox(height: 3,),
                        Text(
                          'May 27, 4:13pm',
                          style: AppTextStyles.regularStyle.copyWith(    color: const Color(0xFF868686),
                            fontSize: 12,)
                        ),

                      ],
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomButton(onTap: (){}, title: "I’m good thanks.", titleTextColor: Colors.white, buttonBgColor: AppColors.primaryBlack),
                        const SizedBox(height: 5,),
                        Text(
                          'May 27, 5:13pm',
                          style: AppTextStyles.regularStyle.copyWith(  color: const Color(0xFF6A6A6A),
                            fontSize: 12,)
                        )                ],
                    ),


                  ],
                )






              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextFormField(

              decoration: InputDecoration(
                hintText: "Message..",

                hintStyle: AppTextStyles.semiBoldStyle.copyWith( color: const Color(0xFFA0A0A0),
                  fontSize: 18,),
                prefixIcon: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: AppColors.primaryBlack,
                    child: Icon(Icons.camera_alt_outlined,color: Colors.white,),
                  ),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                      height: 20,width: 20,fit: BoxFit.cover,
                      "assets/images/home/Photo Gallery.png"),
                ),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(color: Color(0xffFF4D4D))),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      width: 2,
                      color: Color(0xffA0A0A0)
                    )),
                enabledBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                        width: 2,
                        color: Color(0xffA0A0A0)
                    )),
                focusedBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                        width: 2,
                        color: Color(0xffA0A0A0)
                    )),
              ),
            ),
          ),
          const SizedBox(height: 10,),
        ],
      ),
    );
  }
}
