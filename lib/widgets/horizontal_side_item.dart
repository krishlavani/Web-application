import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web/constants/controllers.dart';
import 'package:web/constants/style.dart';
import 'package:web/widgets/custom_text.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  final void Function()? onTap;

  const HorizontalMenuItem({
    Key? key,
    required this.itemName,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
                  width: 6,
                  height: 40,
                  color: dark,
                ),
              ),
              SizedBox(
                width: width / 8,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: menuController.returnIconFor(itemName),
              ),
              if (!menuController.isActive(itemName))
                Flexible(
                  child: CustomText(
                    text: itemName,
                    color:
                        menuController.isHovering(itemName) ? dark : lightGray,
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
        ),
      ),
    );
  }
}
