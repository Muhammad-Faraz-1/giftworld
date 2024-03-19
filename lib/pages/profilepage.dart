import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:giftsworld/statemanager/provider.dart';
import 'package:giftsworld/utils/multisimple.dart';
import 'package:giftsworld/widgets/hobbypopup.dart';
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
          color: const Color.fromARGB(255, 249, 244, 255),
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Color(0xff36454F),
                        )),
                    SizedBox(
                      width: 40.w,
                    ),
                    MultiSimple(
                        color: Color(0xff36454F),
                        subtitle: 'Personal Information',
                        weight: FontWeight.w800,
                        size: 20),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 120.h,
                  width: 150.w,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    // border: Border.all(color: Colors.black),
                  ),
                  child: const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/img/person1.jpg')),
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
                        color: Color(0xff36454F),
                        subtitle: 'Full Name',
                        weight: FontWeight.w600,
                        size: 17),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 50.h,
                      width: 340.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MultiSimple(
                              color: Color(0xff36454F),
                              subtitle: 'Oliver Queen',
                              weight: FontWeight.w500,
                              size: 15),
                          const Icon(
                            Icons.edit_outlined,
                            color: Color(0xff36454F),
                            size: 20,
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
                        color: Color(0xff36454F),
                        subtitle: 'Gender',
                        weight: FontWeight.w600,
                        size: 17),
                    SizedBox(
                      height: 10.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Provider11.fortoggle('m');
                      },
                      child: Container(
                        height: 40.h,
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
                              height: 40.h,
                              width: 160.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Provider11.toogle == 'm'
                                    ? const Color.fromARGB(255, 60, 57, 80)
                                    : Colors.white,
                              ),
                              child: Center(
                                child: MultiSimple(
                                    color: Provider11.toogle == 'm'
                                        ? Colors.white
                                        : Color(0xff36454F),
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
                                width: 160.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Provider11.toogle == 'f'
                                      ? const Color.fromARGB(255, 60, 57, 80)
                                      : Colors.white,
                                ),
                                child: Center(
                                  child: MultiSimple(
                                      color: Provider11.toogle == 'f'
                                          ? Colors.white
                                          : Color(0xff36454F),
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
                        color: Color(0xff36454F),
                        subtitle: 'Birthday',
                        weight: FontWeight.w600,
                        size: 17),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 50.h,
                      width: 340.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MultiSimple(
                              color: Color(0xff36454F),
                              subtitle: '12.15.2003',
                              weight: FontWeight.w500,
                              size: 15),
                          const Icon(
                            Icons.cake_outlined,
                            color: Color(0xff36454F),
                            size: 20,
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
                        color: Color(0xff36454F),
                        subtitle: 'Email',
                        weight: FontWeight.w700,
                        size: 17),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 50.h,
                      width: 340.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MultiSimple(
                              color: Color(0xff36454F),
                              subtitle: 'Oliver.2004@gmail.com',
                              weight: FontWeight.w500,
                              size: 15),
                          const Icon(
                            Icons.edit_outlined,
                            color: Color(0xff36454F),
                            size: 20,
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
                        color: Color(0xff36454F),
                        subtitle: 'Contact',
                        weight: FontWeight.w700,
                        size: 17),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 50.h,
                      width: 340.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MultiSimple(
                              color: Color(0xff36454F),
                              subtitle: '+44 98 99 454545',
                              weight: FontWeight.w500,
                              size: 15),
                          const Icon(
                            Icons.edit_outlined,
                            color: Color(0xff36454F),
                            size: 20,
                          )
                        ],
                      )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MultiSimple(
                        color: Color(0xff36454F),
                        subtitle: 'Interests',
                        weight: FontWeight.w600,
                        size: 17),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 40.h,
                      width: 340.w,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                // Provider11.currenthobby(0);
                                showDialog(
                                    context: context,
                                    builder: (_) => HobbyPopup());
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                ),
                                padding: const EdgeInsets.all(10),
                                child: const Center(
                                  child: Icon(
                                    Icons.add,
                                    color: Color(0xff36454F),
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                            /////////////
                            /////////////
                            SizedBox(
                              width: 10.w,
                            ),
                            ////////
                            //////
                            GestureDetector(
                              onTap: () {
                                Provider11.currenthobby(1);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Provider11.hobby != 1
                                      ? Colors.white
                                      : Color(0xff36454F),
                                ),
                                padding: const EdgeInsets.all(10),
                                child: Center(
                                    child: MultiSimple(
                                        color: Provider11.hobby == 1
                                            ? Colors.white
                                            : Color(0xff36454F),
                                        subtitle: 'Trips',
                                        weight: FontWeight.w400,
                                        size: 15)),
                              ),
                            ),
                            /////////////
                            /////////////
                            SizedBox(
                              width: 10.w,
                            ),
                            ////////
                            //////
                            GestureDetector(
                              onTap: () {
                                Provider11.currenthobby(2);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Provider11.hobby != 2
                                      ? Colors.white
                                      : Color(0xff36454F),
                                ),
                                padding: const EdgeInsets.all(10),
                                child: Center(
                                    child: MultiSimple(
                                        color: Provider11.hobby == 2
                                            ? Colors.white
                                            : Color(0xff36454F),
                                        subtitle: 'Movies',
                                        weight: FontWeight.w400,
                                        size: 15)),
                              ),
                            ),
                            /////////////
                            /////////////
                            SizedBox(
                              width: 10.w,
                            ),
                            ////////
                            //////
                            GestureDetector(
                              onTap: () {
                                Provider11.currenthobby(3);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Provider11.hobby != 3
                                      ? Colors.white
                                      : Color(0xff36454F),
                                ),
                                padding: const EdgeInsets.all(10),
                                child: Center(
                                    child: MultiSimple(
                                        color: Provider11.hobby == 3
                                            ? Colors.white
                                            : Color(0xff36454F),
                                        subtitle: 'Books',
                                        weight: FontWeight.w400,
                                        size: 15)),
                              ),
                            ),
                            /////////////
                            /////////////
                            SizedBox(
                              width: 10.w,
                            ),
                            ////////
                            //////
                            GestureDetector(
                              onTap: () {
                                Provider11.currenthobby(4);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Provider11.hobby != 4
                                      ? Colors.white
                                      : Color(0xff36454F),
                                ),
                                padding: const EdgeInsets.all(10),
                                child: Center(
                                    child: MultiSimple(
                                        color: Provider11.hobby == 4
                                            ? Colors.white
                                            : Color(0xff36454F),
                                        subtitle: 'Travel',
                                        weight: FontWeight.w400,
                                        size: 15)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
