import 'package:flutter/material.dart';
import 'package:flutter_exercicios/listPeople.dart';
import 'firstPage.dart';
import 'homePage.dart';
import 'secondPage.dart';
import 'thirdPage.dart';

class AppRoutes {
  static const firstPage = '/firstPage';
  static const secondPage = '/secondPage';
  static const thirdPage = '/thirdPage';
  static const homePage = '/homePage';
  static const listPeople = '/listPeople';

  static Map<String, WidgetBuilder> define(){
    return {
      homePage: (BuildContext context ) => HomePage(),
      firstPage: (BuildContext context ) => FirstPage(),
      secondPage: (BuildContext context ) => SecondPage(),
      thirdPage: (BuildContext context) => ThirdPage(),
      listPeople: (BuildContext context) => ListPeople(),
    };
  }
}