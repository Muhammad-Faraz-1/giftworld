import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:giftsworld/statemanager/provider.dart';
import 'package:giftsworld/utils/multisimple.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Provider11 = Provider.of<Provider1>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromARGB(255, 249, 244, 255),
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                MultiSimple(
                    color: Colors.black,
                    subtitle: 'Personal Information',
                    weight: FontWeight.w700,
                    size: 20),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 150.h,
                  width: 150.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black),
                  ),
                  child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/person1.jpg')),
                ),
                //////////////
                ///////////////
                SizedBox(
                  height: 30.h,
                ),
                ///////////////
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MultiSimple(
                        color: Colors.black,
                        subtitle: 'Full Name',
                        weight: FontWeight.w700,
                        size: 18),
                    Container(
                      height: 50.h,
                      width: 340.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MultiSimple(
                              color: Colors.black,
                              subtitle: 'Oliver Queen',
                              weight: FontWeight.w600,
                              size: 15),
                          Icon(
                            Icons.edit,
                            color: Colors.grey,
                            size: 15,
                          )
                        ],
                      )),
                    ),
                  ],
                ),
                ////////////////
                ////////////////
                SizedBox(
                  height: 30.h,
                ),
                ///////////////
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MultiSimple(
                        color: Colors.black,
                        subtitle: 'Gender',
                        weight: FontWeight.w700,
                        size: 18),
                    GestureDetector(
                      onTap: () {
                        Provider11.fortoggle('m');
                      },
                      child: Container(
                        height: 50.h,
                        width: 340.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        // padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 50.h,
                              width: 170.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Provider11.toogle == 'm'
                                    ? Color.fromARGB(255, 219, 219, 219)
                                    : Colors.white,
                              ),
                              child: Center(
                                child: MultiSimple(
                                    color: Colors.black,
                                    subtitle: 'Male',
                                    weight: FontWeight.w600,
                                    size: 15),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Provider11.fortoggle('f');
                              },
                              child: Container(
                                height: 50.h,
                                width: 170.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Provider11.toogle=='f'? Color.fromARGB(255, 219, 219, 219):Colors.white,
                                ),
                                child: Center(
                                  child: MultiSimple(
                                      color: Colors.black,
                                      subtitle: 'Female',
                                      weight: FontWeight.w600,
                                      size: 15),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                //////////////
                ////////////////
                SizedBox(
                  height: 30.h,
                ),
                //////////////////
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MultiSimple(
                        color: Colors.black,
                        subtitle: 'Birthday',
                        weight: FontWeight.w700,
                        size: 18),
                    Container(
                      height: 50.h,
                      width: 340.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MultiSimple(
                              color: Colors.black,
                              subtitle: '12.15.2003',
                              weight: FontWeight.w600,
                              size: 15),
                          Icon(
                            Icons.cake,
                            color: Colors.grey,
                            size: 15,
                          )
                        ],
                      )),
                    ),
                  ],
                ),
                //////////
                ///////////
                SizedBox(
                  height: 30.h,
                ),
                /////////////
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MultiSimple(
                        color: Colors.black,
                        subtitle: 'Email',
                        weight: FontWeight.w700,
                        size: 18),
                    Container(
                      height: 50.h,
                      width: 340.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MultiSimple(
                              color: Colors.black,
                              subtitle: 'Oliver.2004@gmail.com',
                              weight: FontWeight.w600,
                              size: 15),
                          Icon(
                            Icons.edit,
                            color: Colors.grey,
                            size: 15,
                          )
                        ],
                      )),
                    ),
                  ],
                ),
                //////////
                ///////////
                SizedBox(
                  height: 30.h,
                ),
                /////////////
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MultiSimple(
                        color: Colors.black,
                        subtitle: 'Contact',
                        weight: FontWeight.w700,
                        size: 18),
                    Container(
                      height: 50.h,
                      width: 340.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MultiSimple(
                              color: Colors.black,
                              subtitle: '+44 98 99 454545',
                              weight: FontWeight.w600,
                              size: 15),
                          Icon(
                            Icons.edit,
                            color: Colors.grey,
                            size: 15,
                          )
                        ],
                      )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
