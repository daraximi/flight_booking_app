// ignore_for_file: prefer_const_constructors

import 'package:flight_booking_app/utils/app_layout.dart';
import 'package:flight_booking_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.red.shade300,
            blurRadius: 3,
            spreadRadius: 1,
          )
        ]
      ),
      width: size.width*0.6,
      height: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/one.png"
                )
              )
            ),
          )
        ,
        const Gap(15),
        Text(
          "Open Space",
          style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
          )
        ],
      ),

    );
  }
}
