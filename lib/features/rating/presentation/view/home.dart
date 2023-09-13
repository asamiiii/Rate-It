import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rate_it/core/constants/constants_widgets.dart';
import 'package:rate_it/core/utiles/app_widgets/shared_widgets.dart';
import 'package:rate_it/features/rating/presentation/view_model/home_vm.dart';
import 'package:rate_it/features/rating/presentation/widgets/welcome.dart';
import '../widgets/category.dart';
import '../widgets/rating_item.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LogoApp(), //!--> AppLogo
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Welcome(userName: 'Ahmed'), //!--> Welcome Message
            VSpace(height: 20),
            const TopRatingList(), //!--> Top Rated List
            const CategoryList() //!--> Top Categories
          ],
        ),
      ),
    );
  }
}
