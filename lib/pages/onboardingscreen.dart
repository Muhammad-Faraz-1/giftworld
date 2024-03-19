import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:giftsworld/pages/loginoptions.dart';
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
            const ONB1(),
            Positioned(
              top: 15.h,
              right: 15.w,
              child: GestureDetector(
                onTap: () {
                  // Provider11.currentpage(3);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginOptions()),
                  );
                },
                child: Container(
                  height: 35.h,
                  width: 60.w,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 1.5,
                          blurRadius: 1.5)
                    ],
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(color: Colors.black),
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
            Positioned(
              top: 15.h,
              left: 15.w,
              child: GestureDetector(
                onTap: () {
                  Provider11.onbchange2();
                },
                child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 1.5,
                            blurRadius: 0.5)
                      ],
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ),
              ),
            ),
            const imgchanger(),
          ],
        ),
      ),
    );
  }
}
