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
      ),
      child: TextField(
        style: const TextStyle(
          fontFamily: 'Montserret',
        ),
        cursorColor: const Color(0xff36454F),
        decoration: InputDecoration(
          suffixIcon: hint == 'Email' || hint == 'no'
              ? const SizedBox()
              :
              // IconButton(onPressed: (){}, icon: Icon())
              IconButton(
                  icon: Provider11.pshow == true
                      ? const Icon(
                          Icons.visibility_off,
                          color: Color(0xff36454F),
                          size: 20,
                        )
                      : const Icon(
                          Icons.visibility,
                          color: Color(0xff36454F),
                          size: 20,
                        ),
                  onPressed: () {
                    Provider11.pshow1();
                  },
                ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: const TextStyle(
              fontFamily: 'Montserret',
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Color(0xff36454F)),
        ),
      ),
    );
  }
}

class InputField2 extends StatelessWidget {
  const InputField2({super.key});

  @override
  Widget build(BuildContext context) {
    final Provider11 = Provider.of<Provider1>(context, listen: true);
    return const TextField(
      style: TextStyle(
        fontFamily: 'Montserret',
      ),
      cursorColor: Color(0xff36454F),
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        contentPadding:
            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        border: InputBorder.none,
        hintText: 'Hobby',
        hintStyle: TextStyle(
            fontFamily: 'Montserret',
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Color(0xff36454F)),
      ),
    );
  }
}
