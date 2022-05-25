import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? onTapped;
  const CustomButton({Key? key, required this.text, this.onTapped}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      child: Container(
        width: 374,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xff863CC3),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 160),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 15,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w700,
                color: Color(0xffFFFFFF)),
          ),
        ),
      ),
    );
  }
}
