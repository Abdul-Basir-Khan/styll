import 'package:flutter/material.dart';
import 'package:styyl/screens/bottom_nav_app_bar/home_screen/home_screen.dart';
import 'package:styyl/screens/bottom_nav_app_bar/people_main/people_main.dart';
import 'package:styyl/screens/bottom_nav_app_bar/shop_main/shop_main.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';

class BottomNavAppBar extends StatefulWidget {
  const BottomNavAppBar({super.key});

  @override
  State<BottomNavAppBar> createState() => _BottomNavAppBarState();
}

class _BottomNavAppBarState extends State<BottomNavAppBar> {
  final List<Widget> _bottomNavItem = [
const HomeScreen(),
Container(),
Container(),
PeopleMain(),
ShopMain(),
  ];
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
        key: _scaffoldKey,
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xffEFF4FB),
        body: _bottomNavItem[_currentIndex],
        bottomNavigationBar: BottomAppBar(
          height: 65,
          surfaceTintColor: Colors.white,
          color: AppColors.primaryWhite,
          padding: EdgeInsets.zero,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical:5),
            decoration:const BoxDecoration(
                color: AppColors.primaryWhite,

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BottomTab(
                  onTap: () {
                    onTabTapped(0);
                  },
                  activeColor:const Color(0xff212121),
                  tabColor: _currentIndex==0? const Color(0xffFB67C8):Colors.transparent,
                  icon:const Image(
                    height:30,width: 30,fit: BoxFit.cover,
                    image: AssetImage("assets/images/auth_screen/Home.png"),),
                ),
                BottomTab(
                  onTap: () {
                    onTabTapped(1);
                  },
                  activeColor:const Color(0xff212121),
                  tabColor: _currentIndex==1? const Color(0xffFB67C8):Colors.transparent,
                  icon:const Image(
                    height:30,width: 30,fit: BoxFit.cover,
                    image: AssetImage("assets/images/auth_screen/Video.png"),),
                ),
                BottomTab(
                  onTap: () {
                    onTabTapped(2);
                  },
                  activeColor:const Color(0xff212121),
                  tabColor: _currentIndex==2? Colors.transparent:Colors.transparent,
                  icon:const CircleAvatar(
                    radius: 20,
                    backgroundColor: Color(0xff28BEFF),child: Icon(Icons.add,color: Colors.white,),),
                ),
                BottomTab(
                  onTap: () {
                    onTabTapped(3);
                  },
                  activeColor:const Color(0xff212121),
                  tabColor: _currentIndex==3? const Color(0xffFB67C8):Colors.transparent,
                  icon:const Image(
                    height:30,width: 30,fit: BoxFit.cover,
                    image: AssetImage("assets/images/auth_screen/People.png"),),
                ),
                BottomTab(
                  onTap: () {
                    onTabTapped(4);
                  },
                  activeColor:const Color(0xff212121),
                  tabColor: _currentIndex==4? const Color(0xffFB67C8):Colors.transparent,
                  icon:const Image(
                    height:30,width: 30,

                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/auth_screen/Shopping Bag.png"),),
                ),
              ],
            ),
          ),
        ),
      );
  }
}

class BottomTab extends StatelessWidget {
  final Color activeColor;
  final Color tabColor;
  final Widget icon;
  final VoidCallback onTap;

  const BottomTab({
    super.key,
    required this.activeColor,
    required this.icon,
    required this.onTap, required this.tabColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          icon,
          const SizedBox(
            height: 5,
          ),
         SizedBox(
             width: MediaQuery.sizeOf(context).width*0.10,
             child: Divider(thickness: 1,color:tabColor,height: 1,))
        ],
      ),
    );
  }
}