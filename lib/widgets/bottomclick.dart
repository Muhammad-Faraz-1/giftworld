import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:giftsworld/pages/loginoptions.dart';
import 'package:giftsworld/statemanager/provider.dart';
import 'package:provider/provider.dart';

class BottomClick extends StatelessWidget {
  const BottomClick({super.key});

  @override
  Widget build(BuildContext context) {
    final Provider11 = Provider.of<Provider1>(context, listen: true);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Provider11.currentpage(1);
          },
          child: Provider11.pages == 1
              ? Container(
                  height: 10.h,
                  width: 25.w,
                  decoration: BoxDecoration(
                      // boxShadow: [
                      //   BoxShadow(
                      //       color: Colors.black.withOpacity(0.5),
                      //       spreadRadius: 2,
                      //       blurRadius: 2),
                      // ],
                      // shape: BoxShape.circle,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                )
              : Container(
                  height: 10.h,
                  width: 10.w,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 2),
                  ], shape: BoxShape.circle, color: Colors.white),
                ),
        ),
        SizedBox(
          width: 15.h,
        ),
        GestureDetector(
          onTap: () {
            Provider11.currentpage(2);
          },
          child: Provider11.pages == 2
              ? Container(
                  height: 10.h,
                  width: 25.w,
                  decoration: BoxDecoration(
                      // boxShadow: [
                      //   BoxShadow(
                      //       color: Colors.black.withOpacity(0.5),
                      //       spreadRadius: 2,
                      //       blurRadius: 2),
                      // ],
                      // shape: BoxShape.circle,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                )
              : Container(
                  height: 10.h,
                  width: 10.w,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 2),
                  ], shape: BoxShape.circle, color: Colors.white),
                ),
        ),
        SizedBox(
          width: 15.h,
        ),
        GestureDetector(
          onTap: () {
            Provider11.currentpage(3);
          },
          child: Provider11.pages == 3
              ? Container(
                  height: 10.h,
                  width: 25.w,
                  decoration: BoxDecoration(
                      // boxShadow: [
                      //   BoxShadow(
                      //       color: Colors.black.withOpacity(0.5),
                      //       spreadRadius: 2,
                      //       blurRadius: 2),
                      // ],
                      // shape: BoxShape.circle,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                )
              : Container(
                  height: 10.h,
                  width: 10.w,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 2),
                  ], shape: BoxShape.circle, color: Colors.white),
                ),
        ),
        SizedBox(
          width: 15.h,
        ),
        GestureDetector(
          onTap: () {
            Provider11.currentpage(4);
          },
          child: Provider11.pages == 4
              ? Container(
                  height: 10.h,
                  width: 25.w,
                  decoration: BoxDecoration(
                      // boxShadow: [
                      //   BoxShadow(
                      //       color: Colors.black.withOpacity(0.5),
                      //       spreadRadius: 2,
                      //       blurRadius: 2),
                      // ],
                      // shape: BoxShape.circle,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                )
              : Container(
                  height: 10.h,
                  width: 10.w,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 2),
                  ], shape: BoxShape.circle, color: Colors.white),
                ),
        ),
      ],
    );
  }
}

class imgchanger extends StatelessWidget {
  const imgchanger({super.key});

  @override
  Widget build(BuildContext context) {
    final Provider11 = Provider.of<Provider1>(context, listen: true);
    return Positioned(
      bottom: 0.h,
      left: 0.w,
      child: Container(
        height: 320.h,
        width: 360.w,
        padding: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          // color: Colors.white,
          gradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0.8),
              Colors.white.withOpacity(0.0),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // SizedBox(
            //   height: 220.h,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BottomClick(),
                GestureDetector(
                  onTap: () {
                    Provider11.pages == 4
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginOptions()),
                          )
                        : Provider11.onbchange();
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
                        Icons.arrow_forward_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }
}
