import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:giftsworld/statemanager/provider.dart';
import 'package:giftsworld/utils/multisimple.dart';
import 'package:giftsworld/widgets/bottomclick.dart';
import 'package:giftsworld/widgets/onb1.dart';
import 'package:provider/provider.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Provider11 = Provider.of<Provider1>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            ONB1(),
            Positioned(
              top: 15.h,
              right: 15.w,
              child: GestureDetector(
                onTap: () {
                  Provider11.currentpage(3);
                },
                child: Container(
                  height: 35.h,
                  width: 60.w,
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromARGB(255, 224, 224, 224),
                    // border: Border.all(color: Colors.black),
                  ),
                  child: Center(
                    child: MultiSimple(
                        color: Colors.black,
                        subtitle: 'Skip',
                        weight: FontWeight.w600,
                        size: 15),
                  ),
                ),
              ),
            ),
            imgchanger(),
          ],
        ),
      ),
    );
  }
}
