import 'package:flutter/material.dart';

class BtnWidget extends StatelessWidget {
  String? text;

  BtnWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        gradient: const LinearGradient(
          colors: [(Colors.blue), (Colors.black)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Text(
        text!,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
