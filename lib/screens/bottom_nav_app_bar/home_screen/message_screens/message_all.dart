import 'package:flutter/material.dart';
import 'package:styyl/model/all_lists.dart';
import 'package:styyl/screens/bottom_nav_app_bar/home_screen/message_screens/message_box.dart';
import 'package:styyl/themes/app_text_styles.dart';
import 'package:styyl/widgets/custom_textfield.dart';

import '../../../../themes/app_colors.dart';

class MessageAll extends StatelessWidget {
  const MessageAll({super.key});

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
        title: Text(
          'Inbox',
          style: AppTextStyles.semiBoldStyle.copyWith( color: Colors.black,
            fontSize: 20,)
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          const SizedBox(height: 20,),
          const CustomTextField(
            isFilled: true,isFilledColor: Color(0xffF5F2F2),
            prefixIcon: Icon(Icons.search,color: Color(0xFF999999),),
               hintText: 'Search',
            hintTextColor: Color(0xFF999999),

          ),
          const SizedBox(height: 20,),
          ...List.generate(messageList.length, (index)=> ListTile(

            contentPadding: EdgeInsets.zero,
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.transparent,
              backgroundImage:AssetImage(messageList[index].image),
            ),
            title: Text(
             messageList[index].title,
              style: AppTextStyles.regularStyle.copyWith(  color: Colors.black,
                fontSize: 18,)
            ),
            subtitle: Text(
              messageList[index].subTitle,
              style:AppTextStyles.regularStyle.copyWith(  color: const Color(0xFF575757),
                fontSize: 14,)
            ),
            trailing: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const MessageBox()));

                },
                child: const Icon(Icons.arrow_forward_ios,color: AppColors.navBlack,)),
          ),
          )


        ],
      ),
    );
  }
}
