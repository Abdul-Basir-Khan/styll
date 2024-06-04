import 'package:flutter/material.dart';
import 'package:styyl/model/all_lists.dart';
import 'package:styyl/screens/bottom_nav_app_bar/home_screen/profile/dashboard_admin_seller/admin_dashboard.dart';
import 'package:styyl/themes/app_colors.dart';
import 'package:styyl/themes/app_text_styles.dart';

import 'dashboard_admin_seller/seller_dashboard.dart';

class IndividualProfile extends StatefulWidget {
  const IndividualProfile({super.key});

  @override
  State<IndividualProfile> createState() => _IndividualProfileState();
}

class _IndividualProfileState extends State<IndividualProfile> {
  int currentIndex=0;
  bool isFollow=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEFF4FB),

      appBar: AppBar(
        backgroundColor: AppColors.primaryWhite,elevation: 0,
        leading:
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image(
              height: MediaQuery.sizeOf(context).height*0.05,
              width: MediaQuery.sizeOf(context).width*0.30,
              image: const AssetImage("assets/images/auth_screen/Styyl.png")),
        ),
        actions: const [
          Icon(Icons.search,color: Colors.black,),
          const SizedBox(width: 10,),
          const Icon(Icons.mail,color: Colors.black,),
          const SizedBox(width: 10,),
        ],
      ),
      body: ListView(
        children: [

          Container(
            color: AppColors.primaryWhite,
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: MediaQuery.sizeOf(context).height*0.23,
                      width: MediaQuery.sizeOf(context).width*1,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/home/locmain.png"))
                      ),
                      child: const Align(
                        alignment: Alignment.bottomRight,
                        child:
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(
                              radius:18,
                              backgroundColor: AppColors.primaryWhite,
                              child: Icon(Icons.camera_alt,color: AppColors.primaryBlack,)),
                        ),

                      ),
                    ),
                    const Positioned(
                      right: 0,left: 0,top: 104,
                      child: CircleAvatar(
                        radius: 63,
                        child:Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Image(image: AssetImage("assets/images/home/man.png"),),
                            Positioned(
                              bottom: 10,right: 2,
                              child: CircleAvatar(
                                  radius:18,
                                  backgroundColor: Color(0xffE4E3E3),
                                  child: Icon(Icons.camera_alt,color: AppColors.primaryBlack,)),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 65,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        'Jason Lee',
                        style: AppTextStyles.semiBoldStyle.copyWith( color: Colors.black,
                          fontSize: 17,)
                    ),
                    const SizedBox(width: 10,),
                    const Image(
                        height: 25,width: 25,fit: BoxFit.cover,
                        image: AssetImage("assets/images/home/Approval.png"))
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Text("1.2 m",style: AppTextStyles.semiBoldStyle.copyWith(fontSize: 18,color: AppColors.primaryBlack),),
                    const SizedBox(width: 5,),
                    Text("followers",style: AppTextStyles.regularStyle.copyWith(fontSize: 12,color: const Color(0xff171717)),),
                    const SizedBox(width: 12,),
                    Text("556",style: AppTextStyles.semiBoldStyle.copyWith(fontSize: 18,color: AppColors.primaryBlack),),
                    const SizedBox(width: 5,),
                    Text("following",style: AppTextStyles.regularStyle.copyWith(fontSize: 12,color: const Color(0xff171717)),),
                    const SizedBox(width: 12,),
                    Text("5.2m",style: AppTextStyles.semiBoldStyle.copyWith(fontSize: 18,color: AppColors.primaryBlack),),
                    const SizedBox(width: 5,),
                    Text("Likes",style: AppTextStyles.regularStyle.copyWith(fontSize: 12,color: const Color(0xff171717)),),

                    const Spacer(),
                  ],
                ),
                const SizedBox(height: 10,),
                Center(
                  child: Text(
                      'A passion for fashion design and shopping',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.regularStyle.copyWith(     color: Colors.black,
                        fontSize: 14,)
                  ),
                ),
                const SizedBox(height: 10,),
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
                        style:AppTextStyles.regularStyle.copyWith(   color: const Color(0xFF3457B0),
                          fontSize: 14,)
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          isFollow=!isFollow;
                        });
                      },
                      child: Container(
                        width: MediaQuery.sizeOf(context).width*0.45,
                        height: 41,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF181818),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        ),
                        child: Center(
                          child: Text(
                              isFollow==false? 'Follow':"Share Profile",
                              style: AppTextStyles.semiBoldStyle.copyWith(  color: Colors.white,
                                fontSize: 15,)
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    GestureDetector(
                      onTap: (){
                        isFollow==true?Navigator.push(context, MaterialPageRoute(builder: (context)=> const AdminDashboard())):null;},
                      child: Container(
                        width: MediaQuery.sizeOf(context).width*0.45,
                        height: 41,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFDFDDDD),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        ),
                        child:

                        isFollow==false?
                        Center(
                          child: Text(
                              'Message',
                              style: AppTextStyles.semiBoldStyle.copyWith(  color: const Color(0xff101010),
                                fontSize: 15,)
                          ),
                        ):Row(
                          crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.edit,color: AppColors.primaryBlack,),
                            const SizedBox(width: 10,),
                            Text(
                                'Edit Profile',
                                style: AppTextStyles.semiBoldStyle.copyWith(  color: const Color(0xff101010),
                                  fontSize: 15,)
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
                const SizedBox(height: 33,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
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
                            Text(
                                profileScreenData[index],
                                style:AppTextStyles.semiBoldStyle.copyWith(  color: Colors.black,
                                  fontSize: 15,)
                            ),
                            const SizedBox(height: 3,),
                            SizedBox(width: 40,child: Container(width: 40,height: 2,color: currentIndex==index?const Color(0xffFB67C8):Colors.transparent,
                            ),
                            ),



                          ],
                        ),
                      ))
                  ),
                ),
                const SizedBox(height: 15,),
                const Image(
                    height: 3,width: double.infinity,
                    image: AssetImage("assets/images/auth_screen/Line 2.png")),
              ],
            ),
          ),


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

        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("assets/images/home/man.png"),),
                    const SizedBox(width: 10,),
                    Text(
                        'Jona',
                        style: AppTextStyles.semiBoldStyle.copyWith(   color: Colors.black,
                          fontSize: 16,)
                    ),
                    const SizedBox(width: 10,),
                    const Image(
                        height: 25,width: 25,fit: BoxFit.cover,
                        image: AssetImage("assets/images/home/Approval.png"))

                  ],),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                    'New summer collection 2024',
                    style:AppTextStyles.regularStyle.copyWith(   color: const Color(0xFF232323),
                      fontSize: 14,)
                ),
              ),
              const SizedBox(height: 10,),

              const ClipRRect(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
                child: Image(
                    image: AssetImage("assets/images/home/Rectangle 113 (1).png")),
              ),

            ],
          ),
        ),
        const SizedBox(height: 20,),

      ],
    );
  }
}

