import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rate_it/core/constants/app_strings/app_routes_values.dart';
import 'package:rate_it/core/constants/constants_widgets.dart';
import 'package:rate_it/core/utiles/app_widgets/app_buttons.dart';
import 'package:rate_it/core/constants/app_strings/app_strings.dart';
import 'package:rate_it/features/auth/presentation/viewModel/login_vm.dart';
import 'package:rate_it/features/auth/presentation/widgets/auth_widgets.dart';
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
          VSpace(height: 160),
          const LogoApp(),
          VSpace(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Container(
              color: AppColors.yellow,
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.5,
              child: Form(
                child: Column(
                  children: [
                    VSpace(height: 20),
                    appText(
                        txt: AppStrings.logInTxt,
                        size: 30,
                        color: AppColors.mainColor),
                    VSpace(height: 20),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: AuthTextField(
                          hintText: AppStrings.userName,
                          controller:
                              context.read<LoginViewModel>().userNameController,
                        )),
                    VSpace(height: 20),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: PassTextField(
                          hintText: AppStrings.pass,
                          isLoginPass: true,
                          controller:
                              context.read<LoginViewModel>().passController,
                        )),
                    VSpace(height: 30),
                    AppButtons.roundButton(
                      onTap: () {
                      Nav.navigatReplac(context, NameRoutes.home);
                    },
                    txt: AppStrings.logInTxt,
                    color: AppColors.mainColor,
                    txtColor: AppColors.secondryColor
                    ),
                    const Expanded(
                      child: SizedBox(),
                    )
                  ],
                ),
              ),
            ),
          ),
          VSpace(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              appText(
                  txt: AppStrings.dontHaveAccount,
                  color: AppColors.secondryColor),
              HSpace(width: 5),
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
