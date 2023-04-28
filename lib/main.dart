import 'package:flutter/material.dart';
import 'package:flutter_eticaret_uyg/constant/constant.dart';
import 'package:flutter_eticaret_uyg/view/splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';

void main() => runApp(ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youtube ECommecne App',
      debugShowCheckedModeBanner: false,
      navigatorKey: Grock.navigationKey,
      theme: ThemeData(
        scaffoldBackgroundColor: Constant.white,
      ),
      home: Splash(),
    );
  }
}
