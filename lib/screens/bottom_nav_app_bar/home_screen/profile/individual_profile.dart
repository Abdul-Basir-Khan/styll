import 'package:flutter/material.dart';
import 'package:styyl/model/all_lists.dart';
import 'package:styyl/screens/bottom_nav_app_bar/home_screen/profile/dashboard_admin_seller/admin_dashboard.dart';
import 'package:styyl/themes/app_colors.dart';
import 'package:styyl/themes/app_text_styles.dart';

class IndividualProfile extends StatefulWidget {
  const IndividualProfile({super.key});

  @override
  State<IndividualProfile> createState() => _IndividualProfileState();
}

class _IndividualProfileState extends State<IndividualProfile> {
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,appBar: AppBar(
      backgroundColor: AppColors.primaryWhite,elevation: 0,
      leading: const Padding(
        padding: EdgeInsets.all(10),
        child: Image(
          height: 25,width: 25,fit: BoxFit.cover,
          image: AssetImage("assets/images/home/Shop.png"),
        ),

      ),
      actions: const [
        Image(
          height: 25,width: 25,fit: BoxFit.cover,
          image: AssetImage("assets/images/home/Envelope.png"),
        ),
        SizedBox(width: 15,),
        Image(
          height: 25,width: 25,fit: BoxFit.cover,
          image: AssetImage("assets/images/home/Bell.png"),
        ),
        SizedBox(width: 10,)
      ],
    ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          const CircleAvatar(
            radius:45,
            child: Image(image: AssetImage("assets/images/home/Ellipse 13.png"),),
          ),
          const SizedBox(height: 20,),
          Center(
            child: Text(
                '@Lacoste',
                style: AppTextStyles.semiBoldStyle.copyWith( color: Colors.black,
                  fontSize: 17,)
            ),
          ),
          const SizedBox(height: 10,),
          Center(
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const AdminDashboard()));
              },
              child: Container(
                width: MediaQuery.sizeOf(context).width*0.30,
                height: 41,
                decoration: ShapeDecoration(
                  color: const Color(0xFF181818),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                ),
                child: Center(
                  child: Text(
                      'Edit Profile',
                      style: AppTextStyles.semiBoldStyle.copyWith(  color: Colors.white,
                        fontSize: 15,)
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      'Followers',
                      style: AppTextStyles.semiBoldStyle.copyWith(  color: Colors.black,
                        fontSize: 17,)
                  ),
                  const SizedBox(height: 10,),
                  Text(
                      '20.1k',
                      style: AppTextStyles.semiBoldStyle.copyWith(  color: Colors.black,
                        fontSize: 17,)
                  ),

                ],
              ),
              const SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      'Following',
                      style: AppTextStyles.semiBoldStyle.copyWith(  color: Colors.black,
                        fontSize: 17,)
                  ),
                  const SizedBox(height: 10,),
                  Text(
                      '283',
                      style: AppTextStyles.semiBoldStyle.copyWith(  color: Colors.black,
                        fontSize: 17,)
                  ),

                ],
              ),
              const SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      'Likes',
                      style: AppTextStyles.semiBoldStyle.copyWith(  color: Colors.black,
                        fontSize: 17,)
                  ),
                  const SizedBox(height: 10,),
                  Text(
                      '206.1k',
                      style: AppTextStyles.semiBoldStyle.copyWith(  color: Colors.black,
                        fontSize: 17,)
                  ),

                ],
              ),

            ],
          ),
          const SizedBox(height: 20,),
          Center(
            child: Text(
                'Life is a beautiful sport. Shop Lacoste official products.',
                textAlign: TextAlign.center,
                style: AppTextStyles.regularStyle.copyWith(     color: Colors.black,
                  fontSize: 14,)
            ),
          ),
          const SizedBox(height: 20,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                  width: 23,height: 23,
                  image: AssetImage("assets/images/home/Link.png")),
              const SizedBox(width: 10,),
              Text(
                  'www.Lacoste.com',
                  textAlign: TextAlign.center,
                  style:AppTextStyles.regularStyle.copyWith(   color: const Color(0xFF35446B),
                    fontSize: 14,)
              ),
            ],
          ),
          const SizedBox(height: 20,),
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:List.generate(profileScreenData.length, (index)=> GestureDetector(
                onTap: (){
                  setState(() {
                    currentIndex=index;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                        height: 27,width: 27,fit: BoxFit.cover,
                        image: AssetImage(profileScreenData[index].toString())),
                    const SizedBox(height: 10,),
                    SizedBox(width: 40,child: Container(width: 40,height: 2,color: currentIndex==index?const Color(0xffFB67C8):Colors.transparent,
                    ),
                    ),



                  ],
                ),
              ))
          ),
          const SizedBox(height: 20,),

          currentIndex==0?const GridTab():Container(),




        ],
      ),);
  }
}


class GridTab extends StatefulWidget {
  const GridTab({super.key});

  @override
  State<GridTab> createState() => _GridTabState();
}

class _GridTabState extends State<GridTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Wrap(
          runSpacing: 10,spacing: 10,children: List.generate(profileImages.length, (index)=>Image(
            width: MediaQuery.sizeOf(context).width*0.27,height: MediaQuery.sizeOf(context).height*0.10,fit: BoxFit.cover,
            image: AssetImage(profileImages[index]))),
        )

      ],
    );
  }
}

