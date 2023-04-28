import 'package:flutter/material.dart';
import 'package:flutter_eticaret_uyg/constant/constant.dart';
import 'package:grock/grock.dart';

class CustomButton extends StatelessWidget {
  Function onTap;
  String text;
  CustomButton({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ElevatedButton(
        onPressed: () => onTap(),
        style: ElevatedButton.styleFrom(
            primary: Constant.orange,
            shape: RoundedRectangleBorder(borderRadius: 10.allBR)),
        child: Text(
          text,
          style: const TextStyle(
              color: Constant.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
