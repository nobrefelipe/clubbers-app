import 'package:flutter/material.dart';

import '../../../clubber.dart';
import '../../styling/border_radius.dart';
import '../../utils/datetime.dart';

class CalendarDayWidget extends StatelessWidget {
  final CLDatetime date;
  const CalendarDayWidget(
    Key? key,
    this.date,
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: CLBorderRadius.r8,
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CLText.heading(
            date.mmm,
            heading: 6,
            color: Colors.black,
          ),
          CLText.content(
            date.dd,
            color: CLPalette.lightRed,
          ),
        ],
      ),
    );
  }
}
