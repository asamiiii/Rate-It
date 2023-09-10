import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rate_it/core/constants/app_strings/app_routes_values.dart';
import 'package:rate_it/core/utiles/app_widgets/app_buttons.dart';
import 'package:rate_it/core/constants/app_strings/app_strings.dart';
import 'package:rate_it/features/auth/presentation/viewModel/login_view_model.dart';
import 'package:rate_it/features/auth/presentation/widgets/auth_widgets.dart';
import '../../../../core/constants/app_icons.dart';
import '../../../../core/utiles/app_colors.dart';
import '../../../../core/utiles/app_widgets/shared_widgets.dart';
import '../../../../core/utiles/shared_fun.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Column(
        children: [
          const SizedBox(
            height: 180,
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
              height: MediaQuery.of(context).size.height * 0.5,
              child: Form(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    appText(
                        txt: AppStrings.logInTxt,
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
                        child: PassTextField(
                          hintText: AppStrings.pass,
                          isLoginPass: true,
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    AppButtons.roundButton(() {}, AppStrings.logInTxt),
                    const Expanded(
                      child: SizedBox(),
                    )
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
                  txt: AppStrings.dontHaveAccount,
                  color: AppColors.secondryColor),
              const SizedBox(
                width: 5,
              ),
              InkWell(
                child:
                    appText(txt: AppStrings.registerNow, color: AppColors.blue),
                onTap: () {
                  Nav.navigatTo(context, NameRoutes.registeration);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
