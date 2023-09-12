import 'package:flutter/material.dart';
import 'package:rate_it/core/constants/app_strings/app_strings.dart';
import 'package:rate_it/core/constants/constants_widgets.dart';
import 'package:rate_it/core/constants/responcive.dart';
import 'package:rate_it/core/utiles/app_colors.dart';
import 'package:rate_it/core/utiles/app_widgets/shared_widgets.dart';
import 'package:rate_it/features/rating/data/datasources/dummy_data.dart';
import 'package:rate_it/features/rating/presentation/widgets/rating_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        appText(
          txt: AppStrings.categories,
          inCenter: false,
        ),
        VSpace(height: 5),
        SizedBox(
          width: AppResponcive.aWidth(context, 0.97),
          height: AppResponcive.aHight(context, 0.34),
          child: ListView.separated(
            shrinkWrap: true,
            cacheExtent: 9999,
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) => ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                width: AppResponcive.aWidth(context, 0.70),
                height: AppResponcive.aHight(context, 0.33),
                color: AppColors.secondryColor.withOpacity(0.5),
                // padding: EdgeInsets.symmetric(vertical: 2),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(child: SizedBox()),
                    SizedBox(
                      width: AppResponcive.aWidth(context, 0.65),
                      height: AppResponcive.aHight(context, 0.32),
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemBuilder: (context, index) => RatingItem(
                            rateItem: rateItems[index], index: index),
                        itemCount: 4,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          // crossAxisSpacing: 2,
                        ),
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                  ],
                ),
              ),
            ),
            separatorBuilder: (context, index) => HSpace(width: 10),
          ),
        ),
      ],
    );
  }
}
