import 'package:flutter/material.dart';
import 'package:web/constants/style.dart';

class RevenueInfo extends StatelessWidget {
  final String? title;
  final String? amount;
  const RevenueInfo({Key? key, this.title, this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: "$title \n\n",
              style: TextStyle(color: lightGray, fontSize: 16),
            ),
            TextSpan(
              text: "\$ $amount ",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
