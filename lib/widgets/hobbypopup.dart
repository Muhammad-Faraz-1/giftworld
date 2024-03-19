import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:giftsworld/utils/multisimple.dart';
import 'package:giftsworld/widgets/inputfield.dart';

class HobbyPopup extends StatelessWidget {
  const HobbyPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.all(0),
      backgroundColor: Colors.transparent,
      title: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          height: 170.h,
          width: 350.w,
          // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color.fromARGB(255, 249, 244, 255),
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: MultiSimple(
                    color: const Color(0xff36454F),
                    subtitle: 'Add Hobby',
                    weight: FontWeight.w600,
                    size: 18),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: InputField2(),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 50.h,
                        width: 165.w,
                        decoration: const BoxDecoration(
                            border: Border(
                                top: BorderSide(color: Colors.black, width: 1),
                                right:
                                    BorderSide(color: Colors.black, width: 1))),
                        child: Center(
                          child: MultiSimple(
                              color: const Color(0xff36454F),
                              subtitle: 'Cancel',
                              weight: FontWeight.w500,
                              size: 18),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50.h,
                        width: 165.w,
                        decoration: const BoxDecoration(
                            border: Border(
                                top:
                                    BorderSide(color: Colors.black, width: 1))),
                        child: Center(
                          child: MultiSimple(
                              color: const Color(0xff36454F),
                              subtitle: 'Add',
                              weight: FontWeight.w500,
                              size: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
