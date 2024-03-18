import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:giftsworld/statemanager/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InputField extends StatelessWidget {
  String? hint;
  var id;
  InputField({super.key, required this.hint, required this.id});

  @override
  Widget build(BuildContext context) {
    final Provider11 = Provider.of<Provider1>(context, listen: true);
    return Container(
      height: 50.h,
      width: 340.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        // boxShadow: [
        //   BoxShadow(
        //       color: const Color.fromARGB(255, 211, 211, 211),
        //       offset: Offset(0, 0),
        //       spreadRadius: 2,
        //       blurRadius: 2)
        // ],
      ),
      child: TextField(
        cursorColor: Colors.black,
        decoration: InputDecoration(
          suffixIcon:hint=='Email'?SizedBox():
              // IconButton(onPressed: (){}, icon: Icon())
              IconButton(
            icon: Provider11.pshow == true
                ? Icon(
                    Icons.visibility_off,
                    color: Colors.black,
                    size: 20,
                  )
                : Icon(
                    Icons.visibility,
                    color: Colors.black,
                    size: 20,
                  ),
            onPressed: () {
              Provider11.pshow1();
            },
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: GoogleFonts.montserrat(
              fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black),
        ),
      ),
    );
  }
}
