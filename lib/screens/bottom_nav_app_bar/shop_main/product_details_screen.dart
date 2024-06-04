import 'package:flutter/material.dart';
import 'package:styyl/themes/app_colors.dart';
import 'package:styyl/themes/app_text_styles.dart';
import 'package:styyl/widgets/button_with_prefix_icon.dart';
import 'package:styyl/widgets/custom_buttom.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: AppColors.primaryBlack,
            )),
        title: Text(
          "Detail Product",
          style: AppTextStyles.mediumStyle.copyWith(fontSize: 16),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children: [
                  Image(
                      height: MediaQuery.sizeOf(context).height * 0.30,
                      width: MediaQuery.sizeOf(context).height * 0.50,
                      fit: BoxFit.fitHeight,
                      image: const AssetImage("assets/images/fashion/Rectangle 71.png")),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Modastore',
                          style: AppTextStyles.regularStyle.copyWith(
                            color: AppColors.primaryBlack,
                            fontSize: 13,
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.amberAccent,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text('4.9 (60)',
                          style: AppTextStyles.semiBoldStyle.copyWith(
                            color: const Color(0xFF828282),
                            fontSize: 12,
                          )),
                      const Spacer(),
                      const Icon(
                        Icons.favorite_border,
                        color: AppColors.primaryBlack,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text('Black Slim Fit T-Shirt',
                      style: AppTextStyles.semiBoldStyle.copyWith(
                        color: AppColors.primaryBlack,
                        fontSize: 15,
                      )),
                  const SizedBox(
                    height: 5,
                  ),
                  Text('\$49.99',
                      style: AppTextStyles.semiBoldStyle.copyWith(
                        color: AppColors.primaryBlack,
                        fontSize: 15,
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "This T-shirt is made from a soft, breathable cotton blend that ensures all-day comfort. Its durable stitching promises long-lasting wear, while the classic cut provides a flattering fit for any body type. Easy to care for and versatile, this T-shirt is perfect for any casual occasion.",
                    style: AppTextStyles.regularStyle
                        .copyWith(color: AppColors.secondaryGray),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Colors',
                              style: AppTextStyles.mediumStyle.copyWith(
                                color: AppColors.primaryBlack,
                                fontSize: 13,
                              )),
                          const SizedBox(height: 20,),
                          const Row(crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                           CircleAvatar(
                             radius: 10,
                             backgroundColor: Colors.black,),
                           SizedBox(width: 10,),
                           CircleAvatar(
                             radius: 10,
                             backgroundColor: Colors.blue,),
                              SizedBox(width: 10,),
                           CircleAvatar(
                             radius: 10,
                             backgroundColor: AppColors.primaryBlue,),
                          ],),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Size',
                              style: AppTextStyles.mediumStyle.copyWith(
                                color: AppColors.primaryBlack,
                                fontSize: 13,
                              )),
                          const SizedBox(height: 20,),
                          Row(crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("XS",style: AppTextStyles.mediumStyle.copyWith(fontSize: 15),),
                              const SizedBox(width: 10,),
                              Container(
                                  height: 30,width: 30,decoration: const BoxDecoration(
                                shape: BoxShape.circle,color: Colors.black
                              ),
                                  child: Center(child: Text("S",style: AppTextStyles.mediumStyle.copyWith(fontSize: 15,color: AppColors.primaryWhite),))),
                              const SizedBox(width: 10,),
                              Text("M",style: AppTextStyles.mediumStyle.copyWith(fontSize: 15),),
                            ],),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Row(
              children: [
                ButtonWithPrefixIcon(onTap: (){}, title: 'Add To Cart', icon: const Icon(Icons.shopping_cart,color: AppColors.navBlack,)),
                
                const SizedBox(width: 10,),
                Expanded(child: CustomButton(onTap: (){}, title: 'Buy Now', titleTextColor: Colors.white, buttonBgColor: AppColors.primaryBlack)),
              ],
            ),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
