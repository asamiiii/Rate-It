import 'package:flutter/material.dart';
import 'package:rate_it/core/constants/constants_widgets.dart';
import 'package:rate_it/core/constants/responcive.dart';
import 'package:rate_it/features/rating/data/datasources/dummy_data.dart';
import 'package:rate_it/features/rating/data/models/rate_item_model.dart';
import 'package:rate_it/features/rating/presentation/widgets/rating_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: AppResponcive.aWidth(context, 0.97),
      height: AppResponcive.aHight(context, 0.30),
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => SizedBox(
          width: AppResponcive.aWidth(context, 0.50),
          height: AppResponcive.aHight(context, 0.40),
          child: GridView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (context, index) =>
                RatingItem(rateItem: rateItems[index], index: index),
            itemCount: 4,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
          ),
        ),
        separatorBuilder: (context, index) => HSpace(width: 8),
      ),
    );
  }
}
