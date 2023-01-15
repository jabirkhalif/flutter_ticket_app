import 'package:booking_ticket/utils/app_layout.dart';
import 'package:booking_ticket/utils/app_styles.dart';
import 'package:booking_ticket/widgets/icon_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.GetWidth(20),
            vertical: AppLayout.getScreenHeight(20)),
        children: [
          SizedBox(
            height: AppLayout.getScreenHeight(40),
            width: AppLayout.GetWidth(40),
          ),
          Text(
            'What are\nyou looking for?',
            style: Styles.headLineStyle.copyWith(
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: AppLayout.getScreenHeight(40),
            width: AppLayout.GetWidth(40),
          ),
          Container(
            padding: const EdgeInsets.all(3.5),
            decoration: BoxDecoration(
              color: const Color(0xFFF4F6FD),
              borderRadius: BorderRadius.circular(AppLayout.GetWidth(50)),
            ),
            child: Row(
              children: [
                // airline tickets tab

                Container(
                  width: size.width * .44,
                  padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getScreenHeight(7)),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(AppLayout.GetWidth(50)),
                    ),
                  ),
                  child: Text(
                    'Airline tickets',
                    style: Styles.headLineStyle3.copyWith(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

                // hotels tab

                Container(
                  width: size.width * .44,
                  padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getScreenHeight(7)),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(AppLayout.GetWidth(50)),
                    ),
                  ),
                  child: Text(
                    'Hotels',
                    style: Styles.headLineStyle3.copyWith(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: AppLayout.getScreenHeight(25),
          ),
          const IconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          SizedBox(
            height: AppLayout.getScreenHeight(20),
          ),
          const IconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          SizedBox(
            height: AppLayout.getScreenHeight(25),
          ),
          Container(
            padding: EdgeInsets.all(AppLayout.GetWidth(15)),
            decoration: BoxDecoration(
              color: const Color(0xD91130CE),
              borderRadius: BorderRadius.circular(AppLayout.GetWidth(10)),
            ),
            child: Text('Find Tickets',
                style: Styles.textStyle.copyWith(color: Colors.white),
                textAlign: TextAlign.center),
          ),
        ],
      ),
    );
  }
}