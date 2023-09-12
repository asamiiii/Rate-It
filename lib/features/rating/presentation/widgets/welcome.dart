import 'package:flutter/material.dart';
import 'package:rate_it/core/constants/app_icons.dart';
import 'package:rate_it/core/utiles/app_widgets/app_buttons.dart';
import '../../../../core/constants/app_strings/app_strings.dart';
import '../../../../core/utiles/app_colors.dart';
import '../../../../core/utiles/app_widgets/shared_widgets.dart';

// ignore: must_be_immutable
class Welcome extends StatelessWidget {
  String? userName;
  Welcome({Key? key, this.userName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        appText(
            txt: AppStrings.welcome, color: AppColors.secondryColor, size: 25),
        appText(txt: userName, color: AppColors.green, size: 30),
        const Expanded(child: SizedBox()),
        AppButtons.roundButtonWithIcon(
            onTap: () {},
            txt: AppStrings.search,
            color: AppColors.yellow,
            icon: AppIcons.searchIcon)
      ],
    );
  }
}
