import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/fi_as2_amna_assets.dart';
import '../../widgets/fi_as2_amna_avatar.dart';

part 'widget/_fi_as2_amna_card.dart';

class F1As2AmnaHome extends StatelessWidget {
  const F1As2AmnaHome({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      F1As2AmnaAssets.girl_1,
      F1As2AmnaAssets.man_1,
      F1As2AmnaAssets.girl_2,
      F1As2AmnaAssets.man_1,
      F1As2AmnaAssets.girl_1,
      F1As2AmnaAssets.girl_2,
    ];

    List<Widget> cards = [
      const _F1As2AmnaCard(),
      const _F1As2AmnaCard(),
    ];
    Widget smallSpace = const SizedBox(
      height: 10.0,
    );
    Widget mediumSpace = const SizedBox(
      height: 18.0,
    );

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30.0,
            right: 25.0,
            left: 25.0,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(F1As2AmnaAssets.menu),
                  SvgPicture.asset(F1As2AmnaAssets.notification),
                ],
              ),
              mediumSpace,
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const FiAs2Avatar(
                        imagePath: F1As2AmnaAssets.girl_1,
                        showBorder: false,
                        putAddButton: true,
                      ),
                      ...images.map(
                        (story) => Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: FiAs2Avatar(
                            imagePath: story,
                          ),
                        ),
                      ),
                    ],
                  )),
              mediumSpace,
              Container(
                margin: const EdgeInsets.only(top: 10),
                height: 510.0,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: generateCardsWithSeparator(cards, smallSpace),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> generateCardsWithSeparator(
      List<Widget> cards, Widget separator) {
    List<Widget> widgetsWithSeparator =
        cards.expand((widget) => [widget, separator]).toList();

    return widgetsWithSeparator;
  }
}
