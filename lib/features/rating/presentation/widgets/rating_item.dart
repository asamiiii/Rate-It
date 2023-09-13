import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rate_it/core/constants/app_images.dart';
import 'package:rate_it/core/utiles/app_colors.dart';
import 'package:rate_it/core/utiles/app_widgets/shared_widgets.dart';
import 'package:rate_it/features/rating/data/models/rate_item_model.dart';
import '../../../../core/constants/app_strings/app_strings.dart';
import '../../../../core/constants/constants_widgets.dart';
import '../../../../core/constants/responcive.dart';
import '../../../../core/utiles/app_shimmers/top_rated_list_sh.dart';
import '../view_model/home_vm.dart';

// ignore: must_be_immutable
class RatingItem extends StatelessWidget {
  RateItem? rateItem;
  int? index;
  RatingItem({Key? key, this.rateItem, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            children: [
              SizedBox(
                width: AppResponcive.aWidth(context, 0.30),
                height: AppResponcive.aHight(context, 0.13),
                // color: AppColors.secondryColor,
                child: Image.asset(
                  AppImages.domyImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 5,
                child: Container(
                    height: AppResponcive.aHight(context, 0.03),
                    width: AppResponcive.aWidth(context, 0.30),
                    color: Colors.amber.withOpacity(0.6),
                    // padding: EdgeInsets.symmetric(horizontal: 2),
                    child: appText(
                        txt: '${rateItem?.brandName}$index',
                        inCenter: true,
                        color: AppColors.mainColor)),
              )
            ],
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star_rate,
              color: Colors.yellowAccent,
              size: 15,
            ),
            Icon(
              Icons.star_rate,
              color: Colors.yellowAccent,
              size: 15,
            ),
            Icon(
              Icons.star_rate,
              color: Colors.yellowAccent,
              size: 15,
            ),
          ],
        )
      ],
    );
  }
}

class TopRatingList extends StatefulWidget {
  const TopRatingList({
    Key? key,
  }) : super(key: key);

  @override
  State<TopRatingList> createState() => _TopRatingListState();
}

class _TopRatingListState extends State<TopRatingList> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      context.read<HomeVm>().getPopular();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeVm>(
      builder: (context, homeVm, child) => Column(
        children: [
          appText(txt: AppStrings.topRated, inCenter: false),
          VSpace(height: 5),
          SizedBox(
            height: AppResponcive.aHight(context, 0.18),
            width: AppResponcive.aWidth(context, 0.97),
            // color: Colors.amber,
            child: homeVm.isLoading == false
                ? ListView.separated(
                    itemBuilder: (context, index) => RatingItem(
                        rateItem: homeVm.popular[index], index: index),
                    itemCount: homeVm.popular.length,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => HSpace(width: 5),
                  )
                : const TopRatedListShimmer(),
          ),
        ],
      ),
    );
  }
}


