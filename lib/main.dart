import 'package:flutter/material.dart';
import 'package:flutter_exercicios/firstPage.dart';
import 'package:flutter_exercicios/secondPage.dart';
import 'package:flutter_exercicios/thirdPage.dart';

import 'customThemeData.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomThemeData.lightTheme,
      home: thirdPage(),
    )
  );
}