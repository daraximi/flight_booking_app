// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flight_booking_app/Screens/hotel_screen.dart';
import 'package:flight_booking_app/Screens/ticket_view.dart';
import 'package:flight_booking_app/utils/app_info_list.dart';
import 'package:flight_booking_app/widgets/double_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flight_booking_app/utils/app_styles.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          children: [
            // ignore: avoid_unnecessary_containers
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const Gap(40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Good Morning, Darasimi.",
                              style: Styles.headLineStyle3,
                            ),
                            Gap(5),
                            Text(
                              "Book Tickets ",
                              style: Styles.headLineStyle,
                            ),
                          ],
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage("assets/images/img_1.png"))),
                        )
                      ],
                    ),
                    const Gap(25),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color((0xFFF4F6FD))),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 12),
                        child: Row(
                          children: [
                            const Icon(
                                FluentSystemIcons.ic_fluent_search_regular,
                                color: Color(0xFFBFC205)),
                            Text(
                              "Search",
                              style: Styles.headLineStyle4,
                            )
                          ],
                        )),
                    Gap(40),
                    AppDoubleText(bigText: "Upcoming flights", smallText: "view all")
                  ],
                )),
            const Gap(15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children:ticketList.map((singleTicket) => TicketView(ticket: singleTicket)).toList()),
            ),
            const Gap(15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: AppDoubleText(bigText: "Hotels", smallText: "view all"),
            ),
            const Gap(15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left:20),
              child: Row(
                children: hotelList.map((singleHotel) => HotelScreen(hotel: singleHotel)).toList(),
              )),
          ],
        ));
  }
}
