import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:giftsworld/pages/loginpage.dart';
import 'package:giftsworld/pages/signuppage.dart';
import 'package:giftsworld/utils/multisimple.dart';

class LoginOptions extends StatelessWidget {
  const LoginOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 245, 208, 193),
                  image: DecorationImage(
                      image: AssetImage('assets/img/22.png'), fit: BoxFit.contain)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 50.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                            height: 25.h,
                            width: 25.w,
                            child: Image.asset('assets/img/apple.png')),
                        SizedBox(
                          width: 30.w,
                        ),
                        MultiSimple(
                            color: Color(0xff36454F),
                            subtitle: 'Continue With Apple',
                            weight: FontWeight.w600,
                            size: 15)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: 50.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                            height: 25.h,
                            width: 25.w,
                            child: Image.asset('assets/img/google.png')),
                        SizedBox(
                          width: 30.w,
                        ),
                        MultiSimple(
                            color: Color(0xff36454F),
                            subtitle: 'Continue With Google',
                            weight: FontWeight.w600,
                            size: 15)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupPage()),
                            );
                          },
                          child: Container(
                            height: 45.h,
                            width: 140.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color.fromARGB(255, 240, 240, 240)),
                            child: Center(
                                child: MultiSimple(
                                    color: Color(0xff36454F),
                                    subtitle: 'Signup',
                                    weight: FontWeight.w600,
                                    size: 18)),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                             Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                          },
                          child: Container(
                            height: 45.h,
                            width: 140.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white),
                            child: Center(
                                child: MultiSimple(
                                    color: Color(0xff36454F),
                                    subtitle: 'Login',
                                    weight: FontWeight.w600,
                                    size: 18)),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
                top: 50.h,
                left: 20.w,
                child: Container(
                  width: 320.w,
                  child: Image.asset('assets/img/logo1.png'),
                ))
          ],
        ),
      ),
    );
  }
}
