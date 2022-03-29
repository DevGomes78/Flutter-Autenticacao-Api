import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  String? text;

  ContainerWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(90),

        ),
        gradient: LinearGradient(
          colors: [(Colors.blue), (Colors.black)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Container(
            margin: const EdgeInsets.only(right: 20, top: 110),
            alignment: Alignment.bottomRight,
            child: Text(
              text!,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
