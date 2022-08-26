// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web/constants/controllers.dart';
import 'package:web/helpers/responsiveness.dart';
import 'package:web/pages/overview/widgets/available_drivers.dart';
import 'package:web/pages/overview/widgets/overview_cards_large.dart';
import 'package:web/pages/overview/widgets/overview_cards_medium.dart';
import 'package:web/pages/overview/widgets/overview_cards_small.dart';
import 'package:web/pages/overview/widgets/revenue_section_large.dart';
import 'package:web/pages/overview/widgets/revenue_section_small.dart';
import 'package:web/widgets/custom_text.dart';

class OverViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Obx(
            () => Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                  child: CustomText(
                    text: menuController.activeItem.value,
                    size: 24,
                    weight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              if (ResponsiveWidget.isLargeScreen(context) ||
                  ResponsiveWidget.isMediumScreen(context))
                if (ResponsiveWidget.isCustomSize(context))
                  OverviewCardsMediumScreen()
                else
                  OverViewCardsLargeScreen()
              else
                OverviewCardsSmallScreen(),
              if (!ResponsiveWidget.isSmallScreen(context))
                RevenueSectionLarge()
              else
                RevenueSectionSmall(),
              AvailableDrivers(),
            ],
          )),
        ],
      ),
    );
  }
}
