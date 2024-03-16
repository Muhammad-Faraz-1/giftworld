// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MultiSimple extends StatelessWidget {
  Color? color;
  String? subtitle;
  FontWeight? weight;
  double? size;
  MultiSimple({
    super.key,
    required this.color,
    required this.subtitle,
    required this.weight,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        subtitle!,
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
            color: color,
            letterSpacing: 0.2,
            fontSize: size,
            fontWeight: weight,
          ),
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}

class MultiItallic extends StatelessWidget {
  Color? color;
  String? subtitle;
  FontWeight? weight;
  double? size;
  MultiItallic({
    super.key,
    required this.color,
    required this.subtitle,
    required this.weight,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        subtitle!,
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
            color: color,
            letterSpacing: 0.2,
            fontSize: size,
            fontWeight: weight,
            fontStyle: FontStyle.italic
          ),
        ),
        
        textAlign: TextAlign.start,
      ),
    );
  }
}

class Multilinethrough extends StatelessWidget {
  Color? color;
  String? subtitle;
  FontWeight? weight;
  double? size;
  Multilinethrough({
    super.key,
    required this.color,
    required this.subtitle,
    required this.weight,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        subtitle!,
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
            color: color,
            letterSpacing: 0.2,
            fontSize: size,
            fontWeight: weight,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.grey
          ),
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}

class MultiSimple2 extends StatelessWidget {
  Color? color;
  String? subtitle;
  FontWeight? weight;
  double? size;
  MultiSimple2({
    super.key,
    required this.color,
    required this.subtitle,
    required this.weight,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        subtitle!,
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
            color: color,
            letterSpacing: 0.2,
            fontSize: size,
            fontWeight: weight,
          ),
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}

class MultiSimple4 extends StatelessWidget {
  Color? color;
  String? subtitle;
  FontWeight? weight;
  double? size;
  int? maxline;
  MultiSimple4({
    super.key,
    required this.color,
    required this.subtitle,
    required this.weight,
    required this.size,
    required this.maxline,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        subtitle!,
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
            color: color,
            letterSpacing: 0.2,
            fontSize: size,
            fontWeight: weight,
          ),
        ),
        textAlign: TextAlign.start,
        overflow: TextOverflow.ellipsis,
        maxLines: maxline,
      ),
    );
  }
}

class MultiSimple3 extends StatelessWidget {
  Color? color;
  String? subtitle;
  FontWeight? weight;
  double? size;
  MultiSimple3({
    super.key,
    required this.color,
    required this.subtitle,
    required this.weight,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        subtitle!,
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
            color: color,
            letterSpacing: 0.2,
            fontSize: size,
            fontWeight: weight,
          ),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class MultiUnderline extends StatelessWidget {
  Color? color;
  String? subtitle;
  FontWeight? weight;
  double? size;
  MultiUnderline(
      {super.key,
      required this.color,
      required this.subtitle,
      required this.weight,
      required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        subtitle!,
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
            color: color,
            letterSpacing: 0.2,
            fontSize: size,
            fontWeight: weight,
          ),
          decoration: TextDecoration.underline,
          decorationColor: Colors.blue,
          decorationThickness: 2,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}
