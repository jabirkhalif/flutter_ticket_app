import 'package:booking_ticket/utils/app_layout.dart';
import 'package:booking_ticket/utils/app_styles.dart';
import 'package:booking_ticket/widgets/icon_text_widget.dart';
import 'package:booking_ticket/widgets/info_widget.dart';
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
          SizedBox(
            height: AppLayout.getScreenHeight(10),
          ),
          const Info(text1: 'Upcoming Flights', text2: 'View all'),
          SizedBox(
            height: AppLayout.getScreenHeight(15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // ignore: avoid_unnecessary_containers
              Container(
                height: AppLayout.getScreenHeight(400),
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getScreenHeight(15),
                    vertical: AppLayout.GetWidth(15)),
                width: size.width * .43,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    AppLayout.getScreenHeight(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      spreadRadius: 1,
                      blurRadius: 1,
                    ),
                  ],
                ),
                child: Column(children: [
                  Container(
                      height: AppLayout.getScreenHeight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppLayout.getScreenHeight(12),
                        ),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/img1.jpg'),
                          fit: BoxFit.cover,
                        ),
                      )),
                  SizedBox(height: AppLayout.getScreenHeight(12)),
                  Text(
                    "20% Discout on the early booking of this flight, DON'T miss OUT! this chance",
                    style: Styles.headLineStyle2
                        .copyWith(fontWeight: FontWeight.w500),
                  )
                ]),
              ),

              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                          width: size.width * .44,
                          padding: EdgeInsets.symmetric(
                              horizontal: AppLayout.getScreenHeight(15),
                              vertical: AppLayout.GetWidth(15)),
                          height: AppLayout.getScreenHeight(174),
                          decoration: BoxDecoration(
                              color: const Color(0xFF3AB8B8),
                              borderRadius: BorderRadius.circular(
                                  AppLayout.getScreenHeight(18))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Discount\n for survey ",
                                style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(height: AppLayout.getScreenHeight(10)),
                              Text(
                                "Take the survey about our services and get discount",
                                style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 18),
                              ),
                            ],
                          )),
                      Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                            padding:
                                EdgeInsets.all(AppLayout.getScreenHeight(30)),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: const Color(0xFF189999), width: 18),
                              color: Colors.transparent,
                            ),
                          ))
                    ],
                  ),
                  SizedBox(height: AppLayout.getScreenHeight(15)),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppLayout.getScreenHeight(15),
                          vertical: AppLayout.GetWidth(15)),
                      width: size.width * .44,
                      height: AppLayout.getScreenHeight(210),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            AppLayout.getScreenHeight(18),
                          ),
                          color: const Color(0xFFEC6545)),
                      child: Column(
                        children: [
                          Text(
                            "Take love",
                            style: Styles.headLineStyle2.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: AppLayout.getScreenHeight(5)),
                          RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                                text: '😍', style: TextStyle(fontSize: 30)),
                            TextSpan(
                                text: '🥰', style: TextStyle(fontSize: 40)),
                            TextSpan(
                                text: '😘', style: TextStyle(fontSize: 30)),
                          ]))
                        ],
                      ))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
