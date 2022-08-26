import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web/constants/controllers.dart';
import 'package:web/helpers/responsiveness.dart';
import 'package:web/pages/clients/widgets/clients_table.dart';
import 'package:web/widgets/custom_text.dart';

class ClientsPage extends StatelessWidget {
  const ClientsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Row(
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
            )),
        Expanded(
            child: ListView(
          children: const [ClientsTabel()],
        ))
      ],
    );
  }
}
