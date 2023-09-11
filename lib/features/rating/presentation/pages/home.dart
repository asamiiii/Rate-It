import 'package:flutter/material.dart';
import 'package:rate_it/core/constants/app_strings/app_strings.dart';
import 'package:rate_it/core/constants/constants_widgets.dart';
import 'package:rate_it/core/utiles/app_colors.dart';
import 'package:rate_it/core/utiles/app_widgets/shared_widgets.dart';
import 'package:rate_it/features/rating/presentation/widgets/welcome.dart';
import '../../../../core/constants/responcive.dart';
import '../widgets/category.dart';
import '../widgets/rating_item.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LogoApp(),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Welcome(userName: 'Ahmed'),
          VSpace(height: 15),
          const TopRatingList(),
          VSpace(height: 15),
          const CategoryList() //! Top Rated List
        ],
      ),
    );
  }
}
