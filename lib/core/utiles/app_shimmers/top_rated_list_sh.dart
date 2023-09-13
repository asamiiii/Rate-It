import 'package:flutter/material.dart';
import 'package:rate_it/core/constants/responcive.dart';
import 'package:shimmer/shimmer.dart';

import '../../constants/constants_widgets.dart';

class TopRatedListShimmer extends StatelessWidget {
  const TopRatedListShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => Shimmer.fromColors(
        baseColor: Colors.transparent,
        highlightColor: Colors.grey.withOpacity(0.7),
        direction: ShimmerDirection.ltr,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Container(
              color: Colors.grey,
              width: AppResponcive.aWidth(context, 0.30),
              height: AppResponcive.aHight(context, 0.5)),
        ),
      ),
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      separatorBuilder: (context, index) => HSpace(width: 5),
    );
  }
}