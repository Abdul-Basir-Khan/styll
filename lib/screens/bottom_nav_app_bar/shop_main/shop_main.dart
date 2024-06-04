import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:styyl/model/all_lists.dart';
import 'package:styyl/screens/bottom_nav_app_bar/shop_main/product_details_screen.dart';
import 'package:styyl/themes/app_colors.dart';
import 'package:styyl/themes/app_text_styles.dart';
import 'package:styyl/widgets/custom_textfield.dart';

import '../../../provider/provider.dart';

class ShopMain extends StatefulWidget {
  const ShopMain({super.key});

  @override
  State<ShopMain> createState() => _ShopMainState();
}

class _ShopMainState extends State<ShopMain> {
  final List screenData = [
    const IsMainScreen(),
    const IsWomenScreen(),
    const IsMenScreen(),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(context);

    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [screenData[navigationProvider.currentIndex]],
      ),
    );
  }
}

class IsMainScreen extends StatefulWidget {
  const IsMainScreen({super.key});

  @override
  State<IsMainScreen> createState() => _IsMainScreenState();
}

class _IsMainScreenState extends State<IsMainScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                  height: MediaQuery.sizeOf(context).height * 0.08,
                  width: MediaQuery.sizeOf(context).width * 0.18,
                  image:
                      const AssetImage("assets/images/auth_screen/Styyl.png")),
              const Spacer(),
              const Icon(
                Icons.search,
                color: AppColors.primaryBlack,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Image(
            height: MediaQuery.sizeOf(context).height * 0.15,
            fit: BoxFit.cover,
            width: MediaQuery.sizeOf(context).width * 1,
            image: const AssetImage(
                "assets/images/people_main/Group 1707486789.png")),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Shop By Category',
                      style: AppTextStyles.mediumStyle.copyWith(
                        color: const Color(0xFF070707),
                        fontSize: 14,
                      )),
                  const Spacer(),
                  Text('See all',
                      style: AppTextStyles.mediumStyle.copyWith(
                        color: const Color(0xFF070707),
                        fontSize: 14,
                      )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                    categoryList.length,
                    (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              _currentIndex = index;
                              _currentIndex == 0
                                  ? navigationProvider.updateIndex(1)
                                  : _currentIndex == 1
                                      ? navigationProvider.updateIndex(2)
                                      : null;
                            });
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage(categoryList[index].image),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(categoryList[index].title,
                                  style: AppTextStyles.mediumStyle.copyWith(
                                    color: const Color(0xFF070707),
                                    fontSize: 14,
                                  ))
                            ],
                          ),
                        )),
              ),
              const SizedBox(
                height: 30,
              ),
              Text('Products You Like',
                  style: AppTextStyles.mediumStyle.copyWith(
                    color: const Color(0xFF070707),
                    fontSize: 14,
                  )),
              const SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    productLike.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(
                                height:
                                    MediaQuery.sizeOf(context).height * 0.23,
                                width: MediaQuery.sizeOf(context).width * 0.34,
                                fit: BoxFit.cover,
                                image:
                                    AssetImage(productLike[index].toString())),
                          ),
                          const Positioned(
                            right: 10,
                            top: 10,
                            child: Image(
                                height: 30,
                                width: 30,
                                image: AssetImage(
                                    "assets/images/people_main/image 32.png")),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text('Featured Brands',
                  style: AppTextStyles.mediumStyle.copyWith(
                    color: const Color(0xFF070707),
                    fontSize: 14,
                  )),
              const SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    featuredBrand.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                            height: MediaQuery.sizeOf(context).height * 0.23,
                            width: MediaQuery.sizeOf(context).width * 0.34,
                            fit: BoxFit.cover,
                            image: AssetImage(featuredBrand[index].toString())),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class IsMenScreen extends StatefulWidget {
  const IsMenScreen({super.key});

  @override
  State<IsMenScreen> createState() => _IsMenScreenState();
}

class _IsMenScreenState extends State<IsMenScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    navigationProvider.updateIndex(0);
                  });
                },
                child: const CircleAvatar(
                  radius: 16,
                  backgroundColor: Color(0xFF0F0F0F),
                  child: Center(
                      child: Icon(
                    Icons.arrow_back_ios,
                    size: 15,
                    color: AppColors.primaryWhite,
                  )),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Expanded(
                  child: CustomTextField(
                hintText: 'Mens Fashion',
                isFilled: true,
                isFilledColor: Color(0xFFF5F1F1),
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xFF999999),
                ),
              )),
              const SizedBox(
                width: 10,
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text('Shop By Category',
              style: AppTextStyles.mediumStyle.copyWith(
                color: const Color(0xFF070707),
                fontSize: 14,
              )),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      fashionListMen.length,
                      (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundColor: const Color(0xff343434),
                                child: Image.asset(
                                    height: 25,
                                    fit: BoxFit.cover,
                                    width: 25,
                                    fashionListMen[index].image),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(fashionListMen[index].title,
                                  style: AppTextStyles.mediumStyle.copyWith(
                                    color: const Color(0xFF070707),
                                    fontSize: 14,
                                  )),
                              const SizedBox(
                                height: 7,
                              ),
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.17,
                                child: Divider(
                                  thickness: 1,
                                  height: 1,
                                  color: _currentIndex == index
                                      ? const Color(0xffFB67C8)
                                      : Colors.transparent,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ]),
          ),
          const SizedBox(
            height: 20,
          ),
          _currentIndex == 0
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Image(
                            height: 30,
                            width: 30,
                            image: (AssetImage(
                                "assets/images/people_main/Sorting arrowheads.png"))),
                        const SizedBox(
                          width: 10,
                        ),
                        Text('Price: Low to High',
                            style: AppTextStyles.regularStyle.copyWith(
                              color: AppColors.primaryBlack,
                              fontSize: 13,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GridView.builder(
                      itemCount: tShirtList.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              mainAxisExtent: 220),
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProductDetailsScreen()));
                        },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Stack(
                                  children: [
                                    Image(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.18,
                                        width: MediaQuery.sizeOf(context).width *
                                            0.46,
                                        fit: BoxFit.fill,
                                        image: AssetImage(tShirtList[index])),
                                    const Positioned(
                                      top: 10,
                                      right: 10,
                                      child: Image(
                                          height: 25,
                                          width: 25,
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              "assets/images/home/Fire.png")),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
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
                                ],
                              ),
                              const SizedBox(
                                height: 5,
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
                                  ))
                            ],
                          ),
                        );
                      },
                    )
                  ],
                )
              : Container()
        ],
      ),
    );
  }
}

class IsWomenScreen extends StatefulWidget {
  const IsWomenScreen({super.key});

  @override
  State<IsWomenScreen> createState() => _IsWomenScreenState();
}

class _IsWomenScreenState extends State<IsWomenScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    navigationProvider.updateIndex(0);
                  });
                },
                child: const CircleAvatar(
                  radius: 16,
                  backgroundColor: Color(0xFF0F0F0F),
                  child: Center(
                      child: Icon(
                    Icons.arrow_back_ios,
                    size: 15,
                    color: AppColors.primaryWhite,
                  )),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Expanded(
                  child: CustomTextField(
                hintText: 'Women Fashion',
                isFilled: true,
                isFilledColor: Color(0xFFF5F1F1),
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xFF999999),
                ),
              )),
              const SizedBox(
                width: 10,
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text('Shop By Category',
              style: AppTextStyles.mediumStyle.copyWith(
                color: const Color(0xFF070707),
                fontSize: 14,
              )),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      fashionList.length,
                      (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundColor: const Color(0xff343434),
                                child: Image.asset(
                                    height: 25,
                                    fit: BoxFit.cover,
                                    width: 25,
                                    fashionList[index].image),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(fashionList[index].title,
                                  style: AppTextStyles.mediumStyle.copyWith(
                                    color: const Color(0xFF070707),
                                    fontSize: 14,
                                  )),
                              const SizedBox(
                                height: 7,
                              ),
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.17,
                                child: Divider(
                                  thickness: 1,
                                  height: 1,
                                  color: _currentIndex == index
                                      ? const Color(0xffFB67C8)
                                      : Colors.transparent,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ]),
          ),
          const SizedBox(
            height: 20,
          ),
          _currentIndex == 0
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Image(
                            height: 30,
                            width: 30,
                            image: (AssetImage(
                                "assets/images/people_main/Sorting arrowheads.png"))),
                        const SizedBox(
                          width: 10,
                        ),
                        Text('Price: Low to High',
                            style: AppTextStyles.regularStyle.copyWith(
                              color: AppColors.primaryBlack,
                              fontSize: 13,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GridView.builder(
                      itemCount: tShirtList.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              mainAxisExtent: 220),
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProductDetailsScreen()));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Stack(
                                  children: [
                                    Image(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.18,
                                        width: MediaQuery.sizeOf(context).width *
                                            0.46,
                                        fit: BoxFit.fill,
                                        image: AssetImage(tShirtList[index])),
                                    const Positioned(
                                      top: 10,
                                      right: 10,
                                      child: Image(
                                          height: 25,
                                          width: 25,
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              "assets/images/home/Fire.png")),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
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
                                ],
                              ),
                              const SizedBox(
                                height: 5,
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
                                  ))
                            ],
                          ),
                        );
                      },
                    )
                  ],
                )
              : Container()
        ],
      ),
    );
  }
}
