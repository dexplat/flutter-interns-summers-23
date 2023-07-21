import 'package:flutter/material.dart';

import '../../../constants/fi_as2_hira_colors.dart';
import 'fi_as2_hira_circlecontainer.dart';
import 'fi_as2_hira_dottedborder.dart';

class H1Logo extends StatelessWidget {
  const H1Logo({super.key});

  @override
  Widget build(BuildContext context) {
    Widget bigCircle = Container(
      height: 18,
      width: 18,
      decoration: BoxDecoration(
          color: Constants.pink, borderRadius: BorderRadius.circular(10)),
    );
    Widget smallCircle = Container(
      height: 15,
      width: 15,
      decoration: BoxDecoration(
          color: Constants.pink, borderRadius: BorderRadius.circular(10)),
    );
    return Container(
      height: 333,
      width: 350,
      color: Colors.transparent,
      alignment: Alignment.center,
      child: Stack(
        children: [
          H1Dotted(
            color: Constants.grey,
            child: Container(
              height: 300,
              width: 300,
              color: Colors.transparent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(60),
            child: H1Dotted(
              color: Constants.lightgrey,
              child: Container(
                height: 180,
                width: 180,
                color: Colors.transparent,
              ),
            ),
          ),
          Positioned(top: 0, left: 106, child: bigCircle),
          Positioned(top: 291, left: 205, child: bigCircle),
          Positioned(top: 106, left: 235, child: smallCircle),
          Positioned(top: 195, left: 65, child: smallCircle),
          Positioned(
            top: 10,
            left: 230,
            child: H1Circle(
              child: Image.asset(
                'assets/girl1.png',
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 0,
            child: H1Circle(
              child: Image.asset(
                'assets/man1.png',
              ),
            ),
          ),
          Positioned(
            top: 250,
            left: 40,
            child: H1Circle(
              child: Image.asset(
                'assets/girl2.png',
              ),
            ),
          ),
          Positioned(
            top: 210,
            left: 260,
            child: H1Circle(
              child: Image.asset(
                'assets/man1.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
