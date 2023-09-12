import 'package:flutter/material.dart';
import 'package:rate_it/core/utiles/app_widgets/shared_widgets.dart';

import '../../constants/constants_widgets.dart';
import '../app_colors.dart';

class AppButtons {
  static Widget roundButton(
      {required Function onTap, required String txt, required Color color,required Color txtColor}) {
    return ElevatedButton(
      onPressed: () {
        onTap();
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
      ),
      child: Text(
        txt.toString(),
        style: TextStyle(color: txtColor),
      ),
    );
  }

  static Widget roundButtonWithIcon(
      {required Function onTap,
      required String txt,
      required Color color,
      required IconData icon}) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.yellow),
      ),
      onPressed: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          appText(txt: 'Search', color: AppColors.mainColor), // <-- Text
          HSpace(width: 5),
          Icon(
            // <-- Icon
            color: AppColors.mainColor,
            Icons.search,
            size: 24.0,
          ),
        ],
      ),
    );
  }
}
