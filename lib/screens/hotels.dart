import 'package:booking_ticket/utils/app_layout.dart';
import 'package:booking_ticket/utils/app_styles.dart';

import 'package:flutter/material.dart';

class Hotels extends StatelessWidget {
  final Map<String, dynamic> hotels;
  const Hotels({super.key, required this.hotels});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
        width: size.width * 0.6,
        height: AppLayout.getScreenHeight(350),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
        margin: const EdgeInsets.only(right: 17, top: 5),
        decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200, blurRadius: 2, spreadRadius: 2),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: AppLayout.getScreenHeight(180),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Styles.primaryColor,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/${hotels['image']}"))),
            ),
            SizedBox(
              height: AppLayout.getScreenHeight(10),
            ),
            Text('${hotels['place']}',
                style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor)),
            SizedBox(height: AppLayout.getScreenHeight(5)),
            Text('${hotels['destination']}',
                style: Styles.headLineStyle3.copyWith(color: Colors.white)),
            SizedBox(height: AppLayout.getScreenHeight(8)),
            Text('\$${hotels['price']}/night',
                style: Styles.headLineStyle.copyWith(color: Styles.kakiColor)),
          ],
        ));
  }
}
