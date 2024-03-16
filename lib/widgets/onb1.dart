import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:giftsworld/statemanager/provider.dart';
import 'package:giftsworld/utils/multisimple.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

class ONB1 extends StatelessWidget {
  const ONB1({super.key});

  @override
  Widget build(BuildContext context) {
    final Provider11 = Provider.of<Provider1>(context, listen: true);
    String img1 = 'assets/bg4.jpg';
    String img2 = 'assets/bg2.jpg';
    String img3 = 'assets/bg3.jpg';
    ////////////////////
    String str1 = 'Welcome To';
    String str2 =
        'Explore a curated collection of thoughtful and delightful gifts for every occasion';
    String str3 =
        'Choose your prefered delivery date and time and leave the rest to us';
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: Provider11.pages == 1
                  ? AssetImage(img2)
                  : Provider11.pages == 2
                      ? AssetImage(img1)
                      : Provider11.pages == 3
                          ? AssetImage(img3)
                          : AssetImage(img3),
              fit: BoxFit.cover)),
      // color: Colors.amberAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 150.h,
          ),
          SizedBox(
            width: 280.w,
            child: Shimmer.fromColors(
              period: Duration(seconds: 3),
              baseColor: Provider11.pages == 1 ? Colors.black : Colors.white,
              highlightColor:
                  Provider11.pages == 1 ? Colors.grey : Colors.black,
              child: MultiSimple(
                  color: Colors.black,
                  subtitle: Provider11.pages == 1
                      ? str1
                      : Provider11.pages == 2
                          ? str2
                          : str3,
                  weight: FontWeight.w600,
                  size: Provider11.pages == 1 ? 30 : 22),
            ),
          ),
          Provider11.pages == 1
              ? Container(
                  height: 200.h,
                  width: 300.w,
                  // color: Colors.amber,
                  child: Image.asset(
                    'assets/logo1.png',
                    fit: BoxFit.contain,
                  ),
                )
              : SizedBox(
                  height: 160.h,
                ),
          Provider11.pages == 2
              ? Container(
                  height: 200.h,
                  width: 350.w,
                  child: Image.asset(
                    'assets/gift4.png',
                    fit: BoxFit.cover,
                  ),
                )
              : Provider11.pages == 3
                  ? Container(
                      height: 200.h,
                      width: 350.w,
                      child: Image.asset(
                        'assets/gift4.png',
                        fit: BoxFit.cover,
                      ),
                    )
                  : SizedBox(),
        ],
      ),
    );
  }
}
