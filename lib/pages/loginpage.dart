import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:giftsworld/pages/profilepage.dart';
import 'package:giftsworld/pages/signuppage.dart';
import 'package:giftsworld/statemanager/provider.dart';
import 'package:giftsworld/utils/multisimple.dart';
import 'package:giftsworld/widgets/inputfield.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Provider11 = Provider.of<Provider1>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          // color: Colors.white,
          color: Color.fromARGB(255, 249, 244, 255),
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MultiSimple(
                  color: Colors.black,
                  subtitle: 'Login',
                  weight: FontWeight.w700,
                  size: 25),
              SizedBox(
                height: 30.h,
              ),
              Text.rich(TextSpan(
                  text: 'Don\'t have an account? ',
                  style: GoogleFonts.montserrat(
                      fontSize: 12, fontWeight: FontWeight.w500),
                  children: <InlineSpan>[
                    TextSpan(
                       recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupPage()),
                          );
                        },
                      text: 'Signup',
                      style: GoogleFonts.montserrat(
                          color: const Color.fromARGB(255, 131, 33, 243),
                          decoration: TextDecoration.underline,
                          decorationColor:
                              const Color.fromARGB(255, 131, 33, 243),
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
              // SizedBox(
              //   height: 10.h,
              // ),
              // InputField(
              //   hint: 'Confirm Password',
              //   id: 3,
              // ),
              SizedBox(
                height: 20.h,
              ),
              MultiSimple(
                  color: Colors.black,
                  subtitle: 'Or login with social accounts',
                  weight: FontWeight.w600,
                  size: 12),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 35.h,
                    width: 150.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                            height: 25.h,
                            width: 25.w,
                            child: Image.asset('assets/apple.png')),
                        SizedBox(
                          width: 20.w,
                        ),
                        MultiSimple(
                            color: Colors.black,
                            subtitle: 'Apple',
                            weight: FontWeight.w700,
                            size: 15)
                      ],
                    ),
                  ),
                  Container(
                    height: 35.h,
                    width: 150.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                            height: 25.h,
                            width: 25.w,
                            child: Image.asset('assets/google.png')),
                        SizedBox(
                          width: 20.w,
                        ),
                        MultiSimple(
                            color: Colors.black,
                            subtitle: 'Google',
                            weight: FontWeight.w700,
                            size: 15)
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              ///////////////////////
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                },
                child: Container(
                  height: 40.h,
                  width: 300.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Center(
                    child: MultiSimple(
                        color: Colors.black,
                        subtitle: 'Login',
                        weight: FontWeight.w600,
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
