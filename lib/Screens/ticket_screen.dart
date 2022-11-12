// ignore_for_file: avoid_unnecessary_containers

import 'package:flight_booking_app/Screens/ticket_view.dart';
import 'package:flight_booking_app/utils/app_info_list.dart';
import 'package:flight_booking_app/utils/app_layout.dart';
import 'package:flight_booking_app/utils/app_styles.dart';
import 'package:flight_booking_app/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      body: Stack(children: [
        ListView(
          // ignore: prefer_const_literals_to_create_immutables
          padding:EdgeInsets.symmetric(vertical:  AppLayout.getHeight(20), horizontal: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text("Tickets", style: Styles.headLineStyle,),
            Gap(AppLayout.getHeight(20)),
            const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(ticket: ticketList[0], isColor: true,),
            ),
            Container(
              //margin: EdgeInsets.only(right:AppLayout.getHeight(15), left: AppLayout.getHeight(15)),
              padding: EdgeInsets.symmetric(horizontal: 15),
              color: Colors.white,
              child: 
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Text("Flutter DB", style: Styles.headLineStyle3),
                          Gap(AppLayout.getHeight(5)),
                          Text("Passenger", style: Styles.headLineStyle3),
                          Gap(AppLayout.getHeight(5))
                        ],
                      )
                    ],
                  )
                ]
              )
              )
          ],
        )
      ],)
    );
  }
}
