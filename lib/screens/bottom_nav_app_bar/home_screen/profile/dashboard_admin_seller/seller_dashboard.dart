import 'package:flutter/material.dart';
import 'package:styyl/model/all_lists.dart';
import 'package:styyl/screens/bottom_nav_app_bar/home_screen/message_screens/message_all.dart';
import 'package:styyl/themes/app_colors.dart';
import 'package:styyl/themes/app_text_styles.dart';

class SellerDashboard extends StatefulWidget {
  const SellerDashboard({super.key});

  @override
  State<SellerDashboard> createState() => _SellerDashboardState();
}

class _SellerDashboardState extends State<SellerDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEFF4FB),
      appBar: AppBar(
        backgroundColor: Colors.transparent,elevation: 0,
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios,color: AppColors.navBlack,)),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        children: [
          const SizedBox(height: 10,),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
            decoration: ShapeDecoration(
              color: const Color(0xFF2B2B2B),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/home/Ellipse 14.png"),
                ),
                const SizedBox(width: 15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                        'Hi Lacoste',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.mediumStyle.copyWith(   color: Colors.white,
                          fontSize: 16,)
                    ),
                    const SizedBox(height: 5,),
                    Text(
                      'Welcome back',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.mediumStyle.copyWith(  color: Colors.white,
                        fontSize: 12,)
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 15,),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.signal_cellular_alt,color: Color(0xff42DAFF),),
                      const SizedBox(height: 10,),
                      Text(
                          '1228',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.semiBoldStyle.copyWith(   color: Colors.black,
                            fontSize: 23,)
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        'Product Sales',
                        textAlign: TextAlign.center,
                        style:AppTextStyles.semiBoldStyle.copyWith(  color: const Color(0xFF4F4E4E),
                          fontSize: 12,)
                        ,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.monetization_on_rounded,color: Color(0xff42DAFF),),
                      const SizedBox(height: 10,),
                      Text(
                          '\$554,013',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.semiBoldStyle.copyWith(   color: Colors.black,
                            fontSize: 23,)
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        'Earning',
                        textAlign: TextAlign.center,
                        style:AppTextStyles.semiBoldStyle.copyWith(  color: const Color(0xFF4F4E4E),
                          fontSize: 12,)
                        ,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ...List.generate(sellerList.length, (index)=> Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                          height:25,width: 25,fit: BoxFit.cover,
                          image: AssetImage(sellerList[index].image)),
                      const SizedBox(width: 10,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                    sellerList[index].title,
                                    textAlign: TextAlign.center,
                                    style: AppTextStyles.regularStyle.copyWith(   color: Colors.black,
                                      fontSize: 15,)
                                ),
                                const Spacer(),
                                const Icon(Icons.arrow_forward_ios,color: AppColors.navBlack,)
                              ],
                            ),
                            const SizedBox(height: 15,),
                            const Divider(height: 1,thickness: 1,color: Color(0xFFDAD6D6),)
                          ],
                        ),
                      ),


                    ],),
                ))

              ],
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ...List.generate(sellerListOne.length, (index)=> GestureDetector(
                  onTap: (){
                    setState(() {

                      index==0?Navigator.push(context, MaterialPageRoute(builder: (context)=> MessageAll())):Container();
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                            height:25,width: 25,fit: BoxFit.cover,
                            image: AssetImage(sellerListOne[index].image)),
                        const SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                      sellerListOne[index].title,
                                      textAlign: TextAlign.center,
                                      style: AppTextStyles.regularStyle.copyWith(   color: Colors.black,
                                        fontSize: 15,)
                                  ),
                                  const Spacer(),
                                  const Icon(Icons.arrow_forward_ios,color: AppColors.navBlack,)
                                ],
                              ),
                              const SizedBox(height: 15,),
                              const Divider(height: 1,thickness: 1,color: Color(0xFFDAD6D6),)
                            ],
                          ),
                        ),


                      ],),
                  ),
                )),
                const SizedBox(height: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(width: 30,),
                    Text(
                        "Logout",
                        textAlign: TextAlign.center,
                        style: AppTextStyles.regularStyle.copyWith(   color: Colors.black,
                          fontSize: 15,)
                    ),
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
