import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rate_it/features/auth/presentation/viewModel/login_view_model.dart';

import '../../../../core/constants/app_strings/app_routes_values.dart';
import '../../../../core/constants/app_strings/app_strings.dart';
import '../../../../core/utiles/app_colors.dart';
import '../../../../core/utiles/app_widgets/app_buttons.dart';
import '../../../../core/utiles/app_widgets/shared_widgets.dart';
import '../../../../core/utiles/shared_fun.dart';
import '../widgets/auth_widgets.dart';

class Registration extends StatelessWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Column(
        children: [
          const SizedBox(
            height: 150,
          ),
          const LogoApp(),
          const SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Container(
              color: Colors.amberAccent,
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.6,
              child: Form(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    appText(
                        txt: AppStrings.registeration,
                        size: 30,
                        color: AppColors.mainColor),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: AuthTextField(
                          hintText: AppStrings.userName,
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: AuthTextField(
                          hintText: AppStrings.email,
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Consumer<LoginViewModel>(
                          builder: (context, value, child) => PassTextField(
                            hintText: AppStrings.pass,
                            isRegPass: true,
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Consumer<LoginViewModel>(
                          builder: (context, value, child) => PassTextField(
                            hintText: AppStrings.confirmPass,
                            isConfRegPass: true,
                          ),
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    AppButtons.roundButton(() {}, AppStrings.registeration),
                    const Expanded(
                      child: SizedBox(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              appText(
                  txt: AppStrings.haveAccount, color: AppColors.secondryColor),
              const SizedBox(
                width: 5,
              ),
              InkWell(
                child:
                    appText(txt: AppStrings.loginrNow, color: AppColors.blue),
                onTap: () {
                  Nav.navigatTo(context, NameRoutes.login);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
