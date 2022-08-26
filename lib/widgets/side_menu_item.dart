import 'package:flutter/material.dart';
import 'package:web/helpers/responsiveness.dart';
import 'package:web/widgets/horizontal_side_item.dart';
import 'package:web/widgets/vertical_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final void Function()? onTap;
  const SideMenuItem({Key? key, required this.itemName, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomSize(context)) {
      return VerticalMenyItem(itemName: itemName, onTap: onTap);
    }

    return HorizontalMenuItem(itemName: itemName, onTap: onTap);
  }
}
