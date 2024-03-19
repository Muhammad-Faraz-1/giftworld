import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:giftsworld/pages/loginpage.dart';
import 'package:giftsworld/pages/profilepage.dart';
import 'package:giftsworld/statemanager/provider.dart';
import 'package:giftsworld/utils/multisimple.dart';
import 'package:giftsworld/widgets/inputfield.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Provider11 = Provider.of<Provider1>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          // color: Colors.white,
          color: const Color.fromARGB(255, 249, 244, 255),
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MultiSimple(
                  color: Color(0xff36454F),
                  subtitle: 'Signup',
                  weight: FontWeight.w700,
                  size: 25),
              SizedBox(
                height: 30.h,
              ),
              Text.rich(TextSpan(
                  text: 'Already have an account? ',
                  style: const TextStyle(
                    color: Color(0xff36454F),
                    fontFamily: 'Montserret',
                      fontSize: 15, fontWeight: FontWeight.w700),
                  children: <InlineSpan>[
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        },
                      text: 'Login',
                      style: const TextStyle(
                        fontFamily: 'Montserret',
                          color: Color.fromARGB(255, 33, 89, 243),
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    )
                  ])),
              SizedBox(
                height: 20.h,
              ),
              InputField(
                hint: 'Email',
                id: 1,
              ),
              SizedBox(
                height: 10.h,
              ),
              InputField(
                hint: 'Password',
                id: 2,
              ),
              SizedBox(
                height: 10.h,
              ),
              InputField(
                hint: 'Confirm Password',
                id: 3,
              ),
              SizedBox(
                height: 20.h,
              ),
              MultiSimple(
                  color: Color(0xff36454F),
                  subtitle: 'Or sign up with social accounts',
                  weight: FontWeight.w700,
                  size: 15),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 45.h,
                    width: 150.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                            height: 25.h,
                            width: 25.w,
                            child: Image.asset('assets/img/apple.png')),
                        SizedBox(
                          width: 20.w,
                        ),
                        MultiSimple(
                            color: Color(0xff36454F),
                            subtitle: 'Apple',
                            weight: FontWeight.w700,
                            size: 16)
                      ],
                    ),
                  ),
                  Container(
                    height: 45.h,
                    width: 150.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                            height: 25.h,
                            width: 25.w,
                            child: Image.asset('assets/img/google.png')),
                        SizedBox(
                          width: 20.w,
                        ),
                        MultiSimple(
                            color: Color(0xff36454F),
                            subtitle: 'Google',
                            weight: FontWeight.w700,
                            size: 16)
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 220.h,
              ),
              ///////////////////////
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProfilePage()),
                  );
                },
                child: Container(
                  height: 40.h,
                  width: 300.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xff36454F)),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Center(
                    child: MultiSimple(
                        color: Colors.white,
                        subtitle: 'Sign up',
                        weight: FontWeight.w700,
                        size: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
