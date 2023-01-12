import 'package:booking_ticket/utils/app_layout.dart';
import 'package:booking_ticket/widgets/thick_container.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class Ticket extends StatelessWidget {
  final Map<String, dynamic> ticketDetails;
  const Ticket({super.key, required this.ticketDetails});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getScreenHeight(200),
      child: Container(
        margin: EdgeInsets.only(
            right: AppLayout.GetWidth(16), top: AppLayout.getScreenHeight(16)),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xFF526799),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getScreenHeight(21)),
                      topRight:
                          Radius.circular(AppLayout.getScreenHeight(21)))),
              padding: EdgeInsets.all(AppLayout.getScreenHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "${ticketDetails['from']['code']}",
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      const ThickContainer(),
                      Expanded(
                        child: Stack(children: [
                          SizedBox(
                            height: AppLayout.getScreenHeight(24),
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                      (constraints.constrainWidth() / 15)
                                          .floor(),
                                      // ignore: prefer_const_constructors
                                      (index) => Text(
                                            '-',
                                            style: Styles.textStyle
                                                .copyWith(color: Colors.white),
                                          )),
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: AppLayout.getScreenHeight(24),
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      // ignore: prefer_const_constructors
                                      (index) => Text(
                                            '-',
                                            style: Styles.headLineStyle4
                                                .copyWith(color: Colors.white),
                                          )),
                                );
                              },
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                                angle: 1.5,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                  size: 24,
                                )),
                          ),
                        ]),
                      ),
                      const ThickContainer(),
                      Expanded(child: Container()),
                      Text(
                        "${ticketDetails['to']['code']}",
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: AppLayout.getScreenHeight(4)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${ticketDetails['from']['name']}",
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          "${ticketDetails['flying_time']}",
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          "${ticketDetails['to']['name']}",
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            // ignore: avoid_unnecessary_containers
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  SizedBox(
                      height: AppLayout.getScreenHeight(24),
                      width: AppLayout.GetWidth(10),
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight:
                              Radius.circular(AppLayout.getScreenHeight(10)),
                          bottomRight: Radius.circular(AppLayout.GetWidth(10)),
                        ),
                      ))),
                  Expanded(child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(
                            (constraints.constrainWidth() / 10).floor(),
                            // ignore: prefer_const_constructors
                            (index) => Text(
                                  '-',
                                  style: Styles.textStyle
                                      .copyWith(color: Colors.white),
                                )),
                      );
                    },
                  )),
                  SizedBox(
                      height: AppLayout.getScreenHeight(24),
                      width: AppLayout.GetWidth(10),
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft:
                              Radius.circular(AppLayout.getScreenHeight(10)),
                          bottomLeft:
                              Radius.circular(AppLayout.getScreenHeight(10)),
                        ),
                      ))),
                ],
              ),
            ),
            //bottom container
            Container(
              decoration: BoxDecoration(
                  color: Styles.orangeColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft:
                          Radius.circular(AppLayout.getScreenHeight(21)),
                      bottomRight:
                          Radius.circular(AppLayout.getScreenHeight(21)))),
              padding: EdgeInsets.only(
                  top: AppLayout.getScreenHeight(10),
                  bottom: AppLayout.getScreenHeight(16),
                  left: AppLayout.GetWidth(16),
                  right: AppLayout.GetWidth(16)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${ticketDetails['date']}",
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      SizedBox(
                          height: AppLayout.getScreenHeight(5),
                          width: AppLayout.GetWidth(5)),
                      Text(
                        'DATE',
                        style:
                            Styles.headLineStyle4.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "${ticketDetails['departure_time']}",
                        style:
                            Styles.headLineStyle4.copyWith(color: Colors.white),
                      ),
                      SizedBox(
                          height: AppLayout.getScreenHeight(5),
                          width: AppLayout.GetWidth(5)),
                      Text(
                        'Depature time',
                        style:
                            Styles.headLineStyle4.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '32',
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      SizedBox(
                          height: AppLayout.getScreenHeight(5),
                          width: AppLayout.GetWidth(5)),
                      Text(
                        'Number',
                        style:
                            Styles.headLineStyle4.copyWith(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
