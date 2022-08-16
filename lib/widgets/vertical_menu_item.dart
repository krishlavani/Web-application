import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/controllers.dart';
import '../constants/style.dart';
import 'custom_text.dart';

class VerticalMenyItem extends StatelessWidget {
  final String itemName;
  final void Function()? onTap;
  const VerticalMenyItem({Key? key, required this.itemName, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover("not hovering");
      },
      child: Obx(
        () => Container(
          color: menuController.onHover(itemName)
              ? lightGray.withOpacity(.1)
              : Colors.transparent,
          child: Row(
            children: [
              Visibility(
                visible: menuController.onHover(itemName) ||
                    menuController.isActive(itemName),
                maintainSize: true,
                maintainState: true,
                maintainAnimation: true,
                child: Container(
                  width: 3,
                  height: 72,
                  color: dark,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: menuController.returnIconFor(itemName),
                    ),
                    if (!menuController.isActive(itemName))
                      Flexible(
                        child: CustomText(
                          text: itemName,
                          color: menuController.isHovering(itemName)
                              ? dark
                              : lightGray,
                        ),
                      )
                    else
                      Flexible(
                        child: CustomText(
                          text: itemName,
                          color: dark,
                          size: 18,
                          weight: FontWeight.bold,
                        ),
                      )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
