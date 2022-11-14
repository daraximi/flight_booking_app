// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flight_booking_app/Screens/ticket_view.dart';
import 'package:flight_booking_app/utils/app_info_list.dart';
import 'package:flight_booking_app/utils/app_layout.dart';
import 'package:flight_booking_app/utils/app_styles.dart';
import 'package:flight_booking_app/widgets/column_layout.dart';
import 'package:flight_booking_app/widgets/layout_builder_widget.dart';
import 'package:flight_booking_app/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
        body: Stack(
      children: [
        ListView(
          // ignore: prefer_const_literals_to_create_immutables
          padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(20),
              horizontal: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text(
              "Tickets",
              style: Styles.headLineStyle,
            ),
            Gap(AppLayout.getHeight(20)),
            const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(
                ticket: ticketList[0],
                isColor: true,
              ),
            ),
            SizedBox(height: 1),
            Container(
                margin: EdgeInsets.only(
                    right: AppLayout.getHeight(15),
                    left: AppLayout.getHeight(15)),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                color: Colors.white,
                child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                              firstText: "Flutter DB",
                              secondText: "Passenger",
                              alignment: CrossAxisAlignment.start,
                              isColor: false),
                          AppColumnLayout(
                            firstText: "5221 345678",
                            secondText: "passport",
                            alignment: CrossAxisAlignment.end,
                            isColor: false,
                          )
                        ],
                      ),
                      Gap(AppLayout.getHeight(20)),
                      AppLayoutBuilderWidget(
                        sections: 15,
                        isColor: false,
                        width: 5,
                      ),
                      Gap(AppLayout.getHeight(20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                              firstText: "33644753 1204054923",
                              secondText: "Number of E-ticket",
                              alignment: CrossAxisAlignment.start,
                              isColor: false),
                          AppColumnLayout(
                            firstText: "B2SG28",
                            secondText: "Booking code",
                            alignment: CrossAxisAlignment.end,
                            isColor: false,
                          )
                        ],
                      ),
                      Gap(AppLayout.getHeight(20)),
                      AppLayoutBuilderWidget(
                        sections: 15,
                        isColor: false,
                        width: 5,
                      ),
                      Gap(AppLayout.getHeight(20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/visa.png",
                                    scale: 11,
                                  ),
                                  Text(
                                    " *** 2462",
                                    style: Styles.headLineStyle3,
                                  )
                                ],
                              ),
                              Gap(5),
                              Text(
                                "Payment method",
                                style: Styles.headLineStyle4,
                              )
                            ],
                          ),
                          const AppColumnLayout(
                            firstText: "\$249.99",
                            secondText: "Price",
                            alignment: CrossAxisAlignment.end,
                            isColor: false,
                          )
                        ],
                      ),
                    ])),
            //barcode
            SizedBox(height: 1,),
            Container(
              //color: Colors.white,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(AppLayout.getHeight(21)),
                  bottomLeft:Radius.circular(AppLayout.getHeight(21))
                  )
              ),
              margin: EdgeInsets.only(left: 15, right: 15),
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                child: ClipRRect(
                  borderRadius:BorderRadius.circular(AppLayout.getHeight(14)),
                  child: BarcodeWidget(
                    barcode: Barcode.code128(),
                    data: 'https://github.com/martinovovo',
                    drawText: false,
                    color: Styles.textColor,
                    width: double.infinity,
                    height: 70
                  ),
                ),
              ),
            )
          ],
        )
      ],
    ));
  }
}
