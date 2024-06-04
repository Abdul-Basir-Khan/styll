import 'package:flutter/material.dart';
import 'package:styyl/themes/app_colors.dart';
import 'package:styyl/themes/app_text_styles.dart';
import 'package:styyl/widgets/custom_buttom.dart';
import 'package:styyl/widgets/custom_textfield.dart';

class PeopleMain extends StatefulWidget {
  const PeopleMain({super.key});

  @override
  State<PeopleMain> createState() => _PeopleMainState();
}

class _PeopleMainState extends State<PeopleMain> {

  bool isCreateGroup=false;
  @override
  Widget build(BuildContext context) {
    return

      isCreateGroup==false?


      Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        children: [
          const SizedBox(height: 20,),
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                    fit: BoxFit.cover,
                    height: MediaQuery.sizeOf(context).height*0.16,
                    width: MediaQuery.sizeOf(context).width*1,
                    image: const AssetImage("assets/images/people_main/Rectangle 48.png")),
              ),
              Positioned(
                left: 0,right: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                      height: 40,fit: BoxFit.cover,width: 40,
                      image: AssetImage("assets/images/people_main/People.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                  'All Groups',
                                  style: AppTextStyles.boldStyle.copyWith( color: AppColors.primaryWhite,
                                    fontSize: 15,)
                              ),
                              const SizedBox(height: 10,),
                              Text(
                                  '1273',
                                  style: AppTextStyles.boldStyle.copyWith(  color: AppColors.primaryWhite,
                                    fontSize: 16,)
                              )

                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                  'My Groups',
                                  style: AppTextStyles.boldStyle.copyWith( color: AppColors.primaryWhite,
                                    fontSize: 15,)
                              ),
                              const SizedBox(height: 10,),
                              Text(
                                  '36',
                                  style: AppTextStyles.boldStyle.copyWith(  color: AppColors.primaryWhite,
                                    fontSize: 16,)
                              )

                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                  'Create Group',
                                  style: AppTextStyles.boldStyle.copyWith( color: AppColors.primaryWhite,
                                    fontSize: 15,)
                              ),
                              const SizedBox(height: 10,),
                              GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      isCreateGroup=true;
                                    },
                                    );
                                  },
                                  child: const Icon(Icons.add_circle_outline,color: AppColors.primaryWhite,))
                            ],
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 20,),
          const CustomTextField(
            isFilled: true,
            isFilledColor: AppColors.primaryWhite,
            prefixIcon: Icon(Icons.search,color: Color(0xFF949393),),
            hintText: 'Search groups',
          ),
          const SizedBox(height: 10,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(
                  height: 30,width: 30,
                  image: (AssetImage("assets/images/people_main/Sorting arrowheads.png"))),
              const SizedBox(width: 10,),
              Text(
                  'Newest',
                  style: AppTextStyles.regularStyle.copyWith(
                    fontSize: 13,)
              )
            ],
          ),
          const SizedBox(height: 20,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
              children: [
               Stack(
                 clipBehavior: Clip.none,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image(
                        height: MediaQuery.sizeOf(context).height*0.15,
                          fit: BoxFit.cover,
                          image: const AssetImage("assets/images/people_main/Rectangle 50.png")),
                    ),
                    Positioned(
                      top: MediaQuery.sizeOf(context).height*0.09,left: 0,right: 0,
                      child: CircleAvatar(
                        radius: 45,
                        child: Image.asset("assets/images/people_main/Ellipse 14.png"),),
                    )
                  ],
                ),
                const SizedBox(height:50,),
                Center(
                  child: Text(
                    'Mens Style Trends',
                    style: AppTextStyles.semiBoldStyle.copyWith(  color: const Color(0xFF0F0F0F),
                      fontSize: 20,)
                  ),
                ),
                const SizedBox(height: 30,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text(
                       '534',
                       style: AppTextStyles.semiBoldStyle.copyWith(
                         fontSize: 18,)
                     ),
                     const SizedBox(height: 5,)
 ,
                     Text(
                       'Groups Posts',
                       style:AppTextStyles.regularStyle.copyWith(  color: const Color(0xFF343434),
                         fontSize: 14,)
                     ),

                   ],
                 ),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text(
                       '20.5k',
                       style: AppTextStyles.semiBoldStyle.copyWith(
                         fontSize: 18,)
                     ),
                     const SizedBox(height: 5,)
 ,
                     Text(
                       'Members',
                       style:AppTextStyles.regularStyle.copyWith(  color: const Color(0xFF343434),
                         fontSize: 14,)
                     ),

                   ],
                 ),
               ],

                ),
                const SizedBox(height: 40,),
Center(
  child: SizedBox(
      height: 33,width: MediaQuery.sizeOf(context).width*0.50,
      child: CustomButton(onTap: (){}, title: 'Join', titleTextColor: AppColors.primaryWhite, buttonBgColor: AppColors.primaryBlack)),
),
                const SizedBox(height: 20,)
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image(
                          height: MediaQuery.sizeOf(context).height*0.15,
                          fit: BoxFit.cover,
                          image: const AssetImage("assets/images/people_main/Rectangle 54.png")),
                    ),
                    Positioned(
                      top: MediaQuery.sizeOf(context).height*0.09,left: 0,right: 0,
                      child: CircleAvatar(
                        radius: 45,
                        child: Image.asset("assets/images/people_main/Ellipse 14.png"),),
                    )
                  ],
                ),
                const SizedBox(height:50,),
                Center(
                  child: Text(
                      'Mens Style Trends',
                      style: AppTextStyles.semiBoldStyle.copyWith(  color: const Color(0xFF0F0F0F),
                        fontSize: 20,)
                  ),
                ),
                const SizedBox(height: 30,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            '534',
                            style: AppTextStyles.semiBoldStyle.copyWith(
                              fontSize: 18,)
                        ),
                        const SizedBox(height: 5,)
                        ,
                        Text(
                            'Groups Posts',
                            style:AppTextStyles.regularStyle.copyWith(  color: const Color(0xFF343434),
                              fontSize: 14,)
                        ),

                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            '20.5k',
                            style: AppTextStyles.semiBoldStyle.copyWith(
                              fontSize: 18,)
                        ),
                        const SizedBox(height: 5,)
                        ,
                        Text(
                            'Members',
                            style:AppTextStyles.regularStyle.copyWith(  color: const Color(0xFF343434),
                              fontSize: 14,)
                        ),

                      ],
                    ),
                  ],

                ),
                const SizedBox(height: 40,),
                Center(
                  child: SizedBox(
                      height: 33,width: MediaQuery.sizeOf(context).width*0.50,
                      child: CustomButton(onTap: (){}, title: 'Join', titleTextColor: AppColors.primaryWhite, buttonBgColor: AppColors.primaryBlack)),
                ),
                const SizedBox(height: 20,)
              ],
            ),
          ),
   const SizedBox(height: 20,)


        ],
      ),
    ):
      Scaffold(
        backgroundColor: AppColors.primaryWhite,
        body:

        Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child:
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        isCreateGroup=false;
                      });
                    },
                    child: const CircleAvatar(
                      radius: 16,
                      backgroundColor: Color(0xFF0F0F0F),
                      child: Center(child: Icon(Icons.arrow_back_ios,size: 15,color: AppColors.primaryWhite,)),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'Create a Group',
                    style: AppTextStyles.semiBoldStyle.copyWith(   color: const Color(0xFF0F0F0F),
                      fontSize: 20,)
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 20,),
              Text(
                'Group Name',
                style: AppTextStyles.semiBoldStyle.copyWith(color: AppColors.primaryBlack,
                  fontSize: 17,)
              ),
              const SizedBox(height: 10,),
              const CustomTextField(
                isFilledColor:Color(0xFFEFF4FB),isFilled: true,
              ),
              const SizedBox(height: 20,),
              Text(
                  'Add a description',
                  style: AppTextStyles.semiBoldStyle.copyWith(color: AppColors.primaryBlack,
                    fontSize: 17,)
              ),
              const SizedBox(height: 10,),
              TextFormField(
                maxLines: 5,
                decoration: InputDecoration(
                  filled:true,
                  fillColor: const Color(0xFFEFF4FB),
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
              Text(
                  'Add a cover Photo',
                  style: AppTextStyles.semiBoldStyle.copyWith(color: AppColors.primaryBlack,
                    fontSize: 17,)
              ),
              const SizedBox(height: 10,),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image(
                      width: double.infinity,fit: BoxFit.cover,
                        height: MediaQuery.sizeOf(context).height*0.17,
                        image: const AssetImage("assets/images/people_main/Rectangle 74.png")),
                  ),
               Positioned(
             bottom: 10,right: 10,
                    child: Container(
                      width: MediaQuery.sizeOf(context).width*0.20,
                      height: 31,
                      decoration: ShapeDecoration(
                        color: const Color(0x99121212),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.edit,color: Colors.white,),
                        const SizedBox(width: 10,),
                        Text(
                          'Edit',
                          style: AppTextStyles.semiBoldStyle.copyWith( color: Colors.white,
                            fontSize: 15,)
                        )
                      ],
                      ),
                    ),
                  )

                ],
              ),
              const SizedBox(height:
                15,),
              Text(
                  'Privacy',
                  style: AppTextStyles.semiBoldStyle.copyWith(color: AppColors.primaryBlack,
                    fontSize: 17,)
              ),
              const SizedBox(height: 10,),
              Container(
                width: double.infinity,


                padding: const EdgeInsets.symmetric(horizontal:5 ,vertical: 7),
                decoration: ShapeDecoration(
                  color: const Color(0x00EFF4FB),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFF9D9B9B)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Image(
                        height: 25,width: 25,fit: BoxFit.cover,
                        image: AssetImage("assets/images/people_main/Lock.png")),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Private Group',
                            style: AppTextStyles.semiBoldStyle.copyWith(    color:AppColors.primaryBlack,
                              fontSize: 16,)
                          ),
                          const SizedBox(height: 5,),
                          Text(
                            'Only members can create and view posts',
                            style: AppTextStyles.regularStyle.copyWith( color: Colors.black,
                              fontSize: 12,fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10,),
                    const Icon(Icons.arrow_drop_down,size: 30,color: AppColors.primaryBlack,)
                    
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              CustomButton(onTap: (){}, title: 'Create Group', titleTextColor: AppColors.primaryWhite, buttonBgColor: AppColors.primaryBlack)
              ,const SizedBox(height: 20,),

        ],),),


      );
  }
}

