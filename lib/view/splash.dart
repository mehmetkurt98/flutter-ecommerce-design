import 'package:flutter/material.dart';
import 'package:flutter_eticaret_uyg/assets.dart';
import 'package:flutter_eticaret_uyg/constant/constant.dart';
import 'package:flutter_eticaret_uyg/view/base_scaffold.dart';
import 'package:grock/grock.dart';


class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Grock.toRemove(BaseScaffold());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.darkWhite,
      body: Center(
        child: Image.asset(Assets.images.imSplashPNG),
      ),
    );
  }
}
