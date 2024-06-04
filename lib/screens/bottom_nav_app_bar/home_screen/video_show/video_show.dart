import 'package:flutter/material.dart';
import 'package:styyl/themes/app_text_styles.dart';

class VideoShow extends StatefulWidget {
  const VideoShow({super.key});

  @override
  State<VideoShow> createState() => _VideoShowState();
}

class _VideoShowState extends State<VideoShow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Container(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/home/image 17.png")
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 20,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back_ios,color: Colors.white,)),
              const Spacer(),
              const Icon(Icons.search,color: Colors.white,),
              const SizedBox(width: 10,),
              const Icon(Icons.add_circle_outline,color: Colors.white,),
            ],
          ),
          const Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                    color: Colors.white,
                      height: 35,width: 35,fit: BoxFit.cover,
                      image: AssetImage("assets/images/home/Fire.png")),
                  const SizedBox(height: 10,),
                  Text(
                    '10.7k',
                    style: AppTextStyles.semiBoldStyle.copyWith(   color: Colors.white,
                      fontSize: 14,)
                  ),
                  const SizedBox(height: 20,),
                  const Image(
                    color: Colors.white,
                      height: 35,width: 35,fit: BoxFit.cover,
                      image: AssetImage("assets/images/home/Speech.png")),
                  const SizedBox(height: 10,),
                  Text(
                      '253',
                      style: AppTextStyles.semiBoldStyle.copyWith(   color: Colors.white,
                        fontSize: 14,)
                  ),
                  const SizedBox(height: 20,),
                  const Image(
                    color: Colors.white,
                      height: 35,width: 35,fit: BoxFit.cover,
                      image: AssetImage("assets/images/home/Forward Arrow.png")),

                ],
              ),


            ],
          ),
          const SizedBox(height: 25,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage("assets/images/auth_screen/Ellipse 12.png"),
              ),
              const SizedBox(width: 10,),
              Text(
                  'Tina G',
                  style:AppTextStyles.boldStyle.copyWith(    color: Colors.white,
                    fontSize: 16,)
              ),
              const SizedBox(width: 10,),
              Container(
                width: MediaQuery.sizeOf(context).width*0.25,
                height: 26,
                decoration: ShapeDecoration(
                  color: const Color(0x00D9D9D9),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 2, color: Colors.white),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Follow',
                    style: AppTextStyles.semiBoldStyle.copyWith( color: Colors.white,
                      fontSize: 15,)
                  ),
                ),
              )

            ],
          ),
          const SizedBox(height: 10,),
          Text(
            'Feeling Cool! #Styyl #Trends #Outfits',
            style: AppTextStyles.semiBoldStyle.copyWith(    color: Colors.white,
              fontSize: 18,)
          ),
          const SizedBox(height: 15,),

        ],
      ),
    ));
  }
}
