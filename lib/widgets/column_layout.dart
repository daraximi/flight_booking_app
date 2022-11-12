import 'package:flight_booking_app/utils/app_layout.dart';
import 'package:flight_booking_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppColumnLayout extends StatelessWidget {
  final String firstText, secondText;
  final CrossAxisAlignment alignment;
  const AppColumnLayout(
      {Key? key, 
      required this.firstText, 
      required this.secondText,
      required this.alignment      
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText, style: Styles.headLineStyle3),
        Gap(AppLayout.getHeight(5)),
        Text(secondText, style: Styles.headLineStyle3),
        Gap(AppLayout.getHeight(5))
      ],
    );
  }
}