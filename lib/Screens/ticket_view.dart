// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flight_booking_app/utils/app_layout.dart';
import 'package:flight_booking_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF526799),
                borderRadius:  BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21))
              ),
              padding: const EdgeInsets.all(16),
              child: Column(children: [
                Row(
                  children: [
                    Text("NYC", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                    const Spacer(),
                    Text("London", style:  Styles.headLineStyle3.copyWith(color: Colors.white))
                    ],
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
