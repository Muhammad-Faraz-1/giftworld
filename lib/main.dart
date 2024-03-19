import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:giftsworld/pages/loginoptions.dart';
import 'package:giftsworld/pages/loginpage.dart';
import 'package:giftsworld/pages/onboardingscreen.dart';
import 'package:giftsworld/pages/profilepage.dart';
import 'package:giftsworld/pages/signuppage.dart';
import 'package:giftsworld/statemanager/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        useInheritedMediaQuery: true,
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return ChangeNotifierProvider(
            create: (context) => Provider1(),
            child: const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: OnBoardingScreen(),
              // home: LoginOptions(),
              // home: SignupPage(),
              // home: LoginPage(),
              // home: ProfilePage(),
            ),
          );
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.red,
    );
  }
}
