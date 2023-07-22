import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi-as2-hira/constants/fi_as2_hira_colors.dart';
import 'package:flutter_interns/assesments/assessment_2/fi-as2-hira/constants/fi_as2_hira_spaces.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/fi_as2_hira_avatar.dart';

part 'widgets/fi_as2_hira_card.dart';

class H1Home extends StatelessWidget {
  const H1Home({super.key});

  @override
  Widget build(BuildContext context) {
    Widget smallspace = const SizedBox(
      height: 40,
    );
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(27.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('assets/svgs/menu.svg'),
                    SvgPicture.asset('assets/svgs/notification.svg'),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  H1Avatar(
                    showBorder: false,
                    hasAddButton: true,
                    child: Image.asset(
                      'assets/girl1.png',
                    ),
                  ),
                  H1Avatar(
                    child: Image.asset(
                      'assets/man1.png',
                    ),
                  ),
                  H1Avatar(
                    child: Image.asset(
                      'assets/girl2.png',
                    ),
                  ),
                  H1Avatar(
                    child: Image.asset(
                      'assets/man1.png',
                    ),
                  ),
                ],
              ),
              smallspace,
              const H1Cardbox(),
              smallspace,
            ],
          ),
        ),
      ),
    );
  }
}