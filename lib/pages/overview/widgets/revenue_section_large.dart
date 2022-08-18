import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:web/constants/style.dart';
import 'package:web/pages/overview/widgets/bar_chart.dart';
import 'package:web/pages/overview/widgets/revenue_info.dart';
import 'package:web/widgets/custom_text.dart';

class RevenueSectionLarge extends StatelessWidget {
  const RevenueSectionLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 6),
            color: lightGray.withOpacity(.1),
            blurRadius: 12,
          )
        ],
        border: Border.all(
          color: lightGray,
          width: .5,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomText(
                  text: "Revenue Chart",
                  size: 20,
                  weight: FontWeight.bold,
                  color: lightGray,
                ),
                Container(
                  width: 600,
                  height: 200,
                  child: SimpleBarChart.withSampleData(),
                )
              ],
            ),
          ),
          Container(
            width: 1,
            height: 120,
            color: lightGray,
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: const [
                  RevenueInfo(
                    title: "Today's revenue",
                    amount: "23",
                  ),
                  RevenueInfo(
                    title: "Last 7 days",
                    amount: "150",
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: const [
                  RevenueInfo(
                    title: "Last 30 days",
                    amount: "1,203",
                  ),
                  RevenueInfo(
                    title: "Last 12 months",
                    amount: "3234",
                  ),
                ],
              ),
            ],
          ))
        ],
      ),
    );
  }
}
