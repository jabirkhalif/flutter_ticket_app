import 'package:booking_ticket/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  final String text1;
  final String text2;
  const Info({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text1,
            style: Styles.headLineStyle2,
          ),
          InkWell(
            onTap: () {},
            child: Text(
              text2,
              style: Styles.textStyle.copyWith(color: Styles.primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
