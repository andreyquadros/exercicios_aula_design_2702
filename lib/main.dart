import 'package:flutter/material.dart';
import 'package:flutter_exercicios/appRoutes.dart';
import 'package:flutter_exercicios/database/keys.dart';
import 'package:flutter_exercicios/firstPage.dart';
import 'package:flutter_exercicios/secondPage.dart';
import 'package:flutter_exercicios/thirdPage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'customThemeData.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: KeysSupabase.urlSupabase,
    anonKey: KeysSupabase.anonKeySupabase,
  );
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomThemeData.lightTheme,
      initialRoute: AppRoutes.homePage,
      routes: AppRoutes.define(),
    )
  );
}