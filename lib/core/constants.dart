// ignore: constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const BASE_URL = 'http://90.156.209.69';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double width;
  static late double screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    width = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

final symbols = [' ', '-', '(', ')'];

String removeSymbolsInPhone(String str) {
  String text = str;
  symbols.forEach((element) {
    text = text.replaceAll(element, '');
  });
  return text;
}

String LINKEURLQR(int id) => "http://nc-guest.mercool.ru/ru/receipt?userId=$id";



String convertDataTime(String dateTime, bool showTime) {
  final dataTimeConv = DateTime.parse(dateTime);
  final day = dataTimeConv.day;
  final month = dataTimeConv.month;
  final year = dataTimeConv.year;
  final hour = dataTimeConv.hour;
  final minute = dataTimeConv.minute;
  final time = '$hour:$minute';

  return '$day.${month >10 ?month: "0$month"}.$year${showTime ?" $time" : ""}';
}



const cardDataKey = "cardDataKey";
const tokenKey = "token";
const resultDataKey = "resultData";
const userDataKey = "userDataKey";
const userKey = "userKey";
const INTERNETNOTCONECTION = 'Internet not conection';
const SERVERERROR = 'Server error try agine';
const EMPTYCACHE = 'Empte chached error';
const URLCATEGORIES = 'https://dummyjson.com/products/categories';
