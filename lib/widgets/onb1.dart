import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:giftsworld/statemanager/provider.dart';
import 'package:giftsworld/utils/multisimple.dart';
import 'package:giftsworld/widgets/spaner.dart';
import 'package:provider/provider.dart';

class ONB1 extends StatelessWidget {
  const ONB1({super.key});

  @override
  Widget build(BuildContext context) {
    final Provider11 = Provider.of<Provider1>(context, listen: true);
    String img1 = 'assets/img/bg1.jpg';
    String img2 = 'assets/img/bg2.jpg';
    String img3 = 'assets/img/bg3.jpg';
    String img4 = 'assets/img/bg4.jpg';
    ////////////////////
    String str1 = 'Welcome To,';
    // String str2 =
    //     'Explore a curated collection of thoughtful and delightful gifts for every occasion you can gift your loved ones on any occasion without the hassle of going to market and finding a gift.';
    // String str3 =
    //     'Choose your prefered delivery date and time and leave the rest to us. our delivery team will get the present to the designated location without any delays';
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: Provider11.pages == 1
                  ? AssetImage(img1)
                  : Provider11.pages == 2
                      ? AssetImage(img2)
                      : Provider11.pages == 3
                          ? AssetImage(img3)
                          : Provider11.pages == 4
                              ? AssetImage(img4)
                              : AssetImage(img4),
              fit: BoxFit.cover)),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 70.h,
          ),
          Provider11.pages == 1
              ? Column(
                  children: [
                    SizedBox(
                      width: 280.w,
                      child: MultiBalooBhai(
                        color: Color(0xff36454F),
                        subtitle: str1,
                        weight: FontWeight.w600,
                        size: 25,
                        align: TextAlign.left,
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 90.h,
                        width: 300.w,
                        child: Image.asset(
                          'assets/img/logo1.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                )
              : SizedBox(
                  height: 10.h,
                ),
          Spaner(
            str:Provider11.pages!=1?
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.':'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
            maxline: Provider11.pages == 1 ? 3 : null,
          ),
        ],
      ),
    );
  }
}
