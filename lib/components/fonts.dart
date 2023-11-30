import 'dart:ui';

import 'package:flutter/material.dart';


//for black
class OpenSansRegular {
  static TextStyle textStyle(
      double size
      ) {
    return TextStyle(
        fontFamily: "OpenSans",
        color: Colors.black,
        fontSize: size,
        fontWeight: FontWeight.w500);
}}


class OpenSansSemiBoldItalic {
  static TextStyle textStyle(
      double size
      ) {
    return TextStyle(
        fontFamily: "OpenSansSemiBoldItalic",
        color: Colors.black,
        fontSize:size ,
        fontWeight: FontWeight.w500);
  }}


class OpenSansRegularwhite {
  static TextStyle textStyle(
      double size
      ) {
    return TextStyle(
        fontFamily: "OpenSans",
        color: Colors.white,
        fontSize: size,
        fontWeight: FontWeight.w500);
  }}