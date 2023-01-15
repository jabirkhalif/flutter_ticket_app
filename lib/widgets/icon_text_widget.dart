import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppLayout.GetWidth(12)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppLayout.GetWidth(10)),
      ),
      child: Row(children: [
        Icon(icon, color: const Color(0xFFBFC2DF)),
        SizedBox(
          width: AppLayout.GetWidth(10),
        ),
        Text(
          text,
          style: Styles.textStyle,
        ),
      ]),
    );
  }
}
