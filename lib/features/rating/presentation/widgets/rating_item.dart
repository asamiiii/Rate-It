import 'package:flutter/material.dart';
import 'package:rate_it/core/constants/app_images.dart';
import 'package:rate_it/core/utiles/app_colors.dart';
import 'package:rate_it/core/utiles/app_widgets/shared_widgets.dart';
import 'package:rate_it/features/rating/data/models/rate_item_model.dart';

import '../../../../core/constants/app_strings/app_strings.dart';
import '../../../../core/constants/constants_widgets.dart';
import '../../../../core/constants/responcive.dart';
import '../../data/datasources/dummy_data.dart';

class RatingItem extends StatelessWidget {
  RateItem? rateItem;
  int? index;
  RatingItem({Key? key, this.rateItem, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            children: [
              Container(
                width: 100,
                height: AppResponcive.aHight(context, 0.12),
                color: AppColors.secondryColor,
                child: Image.asset(AppImages.domyImage),
              ),
              Positioned(
                bottom: 5,
                // left: 3,
                child: Container(
                    height: AppResponcive.aHight(context, 0.03),
                    width: 100,
                    color: Colors.amber.withOpacity(0.6),
                    child: appText(
                        txt: '${rateItem?.brandName}$index',
                        inCenter: true,
                        color: AppColors.mainColor)),
              )
            ],
          ),
        ),
        const Row(
          children: [
            Icon(
              Icons.star_rate,
              color: Colors.yellowAccent,
              size: 20,
            ),
            Icon(
              Icons.star_rate,
              color: Colors.yellowAccent,
              size: 20,
            ),
            Icon(
              Icons.star_rate,
              color: Colors.yellowAccent,
              size: 20,
            ),
            Icon(
              Icons.star_rate,
              color: Colors.yellowAccent,
              size: 20,
            ),
          ],
        )
      ],
    );
  }
}

class TopRatingList extends StatelessWidget {
  const TopRatingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        appText(txt: AppStrings.topRated, inCenter: false),
        VSpace(height: 5),
        SizedBox(
          height: AppResponcive.aHight(context, 0.15),
          width: AppResponcive.aWidth(context, 0.97),
          // color: Colors.amber,
          child: ListView.separated(
            itemBuilder: (context, index) =>
                RatingItem(rateItem: rateItems[index], index: index),
            itemCount: rateItems.length,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => HSpace(width: 5),
          ),
        ),
      ],
    );
  }
}
