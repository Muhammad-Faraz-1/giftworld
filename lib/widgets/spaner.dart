import 'package:flutter/material.dart';

class Spaner extends StatelessWidget {
  String? str;
  int? maxline;
  Spaner({super.key, required this.str, required this.maxline});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      maxLines: maxline,
      text: TextSpan(
        text: '\u275D ',
        style: TextStyle(
          color:  Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        children: <InlineSpan>[
          TextSpan(
            text: str,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color:  Color(0xff36454F),
              fontFamily: 'BalooBhai2',
            ),
          ),
          TextSpan(
            text: ' \u275E',
            style: TextStyle(
                color:  Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
