import 'package:flutter/material.dart';
import 'package:styyl/screens/bottom_nav_app_bar/home_screen/profile/individual_profile.dart';
import 'package:styyl/screens/bottom_nav_app_bar/home_screen/profile/seller_profile.dart';
import 'package:styyl/screens/bottom_nav_app_bar/home_screen/video_show/video_show.dart';
import 'package:styyl/widgets/custom_buttom.dart';

import '../../../themes/app_text_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: ListView(
        padding: EdgeInsets.zero,
           children: [
          Container(
            color: Colors.white,padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            child:

            Row(
              children: [
                GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const SellerProfile()));
                    },
                    child: const CircleAvatar(backgroundImage: AssetImage("assets/images/auth_screen/Ellipse 12.png"),)),
                const Spacer(),
                Image(
                    height: MediaQuery.sizeOf(context).height*0.05,
                   width: MediaQuery.sizeOf(context).width*0.30,
                    image: const AssetImage("assets/images/auth_screen/Styyl.png")),
                const Spacer(),
                const Icon(Icons.search,color: Colors.black,),
                const SizedBox(width: 10,),
                const Icon(Icons.mail,color: Colors.black,),
              ],
            ),
          ),
       const SizedBox(height: 20,),
       Container(
         width:double.infinity,
         margin: const EdgeInsets.symmetric(horizontal: 15),
         decoration: ShapeDecoration(
           color: Colors.white,
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(10),
           ),
         ),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
           children: [
             const Image(
                 height: 26,fit: BoxFit.cover,width: 26,
                 image: AssetImage("assets/images/auth_screen/Activity Feed.png")),
             const SizedBox(height: 20,),
             const Image(
                 height: 3,width: double.infinity,
                 image: AssetImage("assets/images/auth_screen/Line 2.png")),
             const SizedBox(height: 20,),
             TextFormField(

               decoration: InputDecoration(
                 hintText: "Share something new....",

                 hintStyle: AppTextStyles.regularStyle.copyWith(
                   color: const Color(0xff7D7D7D),
                   fontSize: 14,
                 ),
                 errorBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(5),
                     borderSide: const BorderSide(color: Color(0xffFF4D4D))),
                 border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(5),
                     borderSide: BorderSide.none),
                 enabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(5),
                     borderSide:  BorderSide.none),
                 focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(5),
                     borderSide: BorderSide.none),
               ),
             ),
             const SizedBox(height: 20,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 15),
             child: Row(crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 const Icon(Icons.photo_library_outlined,color: Color(0xff212121),),
                 const SizedBox(width: 10,),
                 GestureDetector(
                   onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const VideoShow()));
                   },
                   child: const Image(
                       height: 25,fit: BoxFit.cover,width:30,
                       color: Color(0xff212121),
                       image: AssetImage("assets/images/auth_screen/Video.png")),
                 ),
                 const Spacer(),
                 Container(
                   width:MediaQuery.sizeOf(context).width*0.30,
                   height: 29,
                   decoration: ShapeDecoration(
                     color: Colors.black,
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                   ),
                   child: Center(
                     child:
                     Text(
                       'Post',
                       style:AppTextStyles.mediumStyle.copyWith(    color: Colors.white,
                         fontSize: 16,)
                     ),
                   ),
                 )
             ],
             ),
           ),
             const SizedBox(height: 10,),

           ],
         ),
       ),
       const SizedBox(height: 20,),
      Container(
         width: double.infinity,
         margin: const EdgeInsets.symmetric(horizontal: 15),
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
                  GestureDetector(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const IndividualProfile()));
      },
                    child: const CircleAvatar(
                      radius: 25,
                        backgroundImage: AssetImage("assets/images/auth_screen/Ellipse 12.png"),),
                  ),
                  const SizedBox(width: 10,),
                  Text(
                    'Jona97 ',
                    style: AppTextStyles.semiBoldStyle.copyWith(   color: Colors.black,
                      fontSize: 16,)
                  ),
                  const Spacer(),

                  Container(
                    width:MediaQuery.sizeOf(context).width*0.30,
                    height: 29,
                    decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(5),
                      color: Colors.transparent,
                      border: Border.all(  color: Colors.black,)
                    ),
                    child: Center(
                      child:
                      Text(
                          'Follow',
                          style:AppTextStyles.mediumStyle.copyWith(    color: Colors.black,
                            fontSize: 16,)
                      ),
                    ),
                  ),




                ],),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Dressing well is a form of good manners  #Styyl',
                style:AppTextStyles.regularStyle.copyWith(   color: const Color(0xFF232323),
                  fontSize: 14,)
              ),
            ),
            const SizedBox(height: 10,),

            Image(
                height: MediaQuery.sizeOf(context).height*0.24,
               width: MediaQuery.sizeOf(context).width*1,
                fit: BoxFit.fill,
                image: const AssetImage("assets/images/auth_screen/Rectangle 44.png")),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
               const Image(
                   height: 30,width: 30,
                   image: AssetImage("assets/images/auth_screen/image 30.png")),
                  const SizedBox(width: 10,),
                  Text(
                    '1.2k',
                    style: AppTextStyles.semiBoldStyle.copyWith(  color: const Color(0xFF454545),
                      fontSize: 16,)
                  ),
                  const SizedBox(width: 20,),
                  const Icon(Icons.message_outlined,color: Color(0xff212121),),
                  const SizedBox(width: 10,),
                  Text(
                      '223',
                      style: AppTextStyles.semiBoldStyle.copyWith(  color: const Color(0xFF454545),
                        fontSize: 16,)
                  ),
                  const Spacer(),
                  const Icon(Icons.bookmark_border_outlined,color: Color(0xff212121),)


                ],
              ),
            )
          ],
        ),
       ),
             SizedBox(height: 10,)


           ],
      ),
    );
  }
}
