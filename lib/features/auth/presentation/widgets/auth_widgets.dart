import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rate_it/features/auth/presentation/viewModel/login_vm.dart';
import 'package:rate_it/features/auth/presentation/viewModel/register_vm.dart';

import '../../../../core/constants/app_icons.dart';
import '../../../../core/utiles/app_colors.dart';

// ignore: must_be_immutable
class PassTextField extends StatelessWidget {
  String? hintText;
  bool? isLoginPass = false;
  bool? isRegPass = false;
  bool? isConfRegPass = false;
  TextEditingController? controller =TextEditingController();
  PassTextField(
      {Key? key,
      this.hintText,
      this.isRegPass,
      this.isConfRegPass,
      this.isLoginPass,
      this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer2<LoginViewModel,RegisterVm>(
      builder: (context, loginVm,registerVm, child) => TextFormField(
        obscureText: isLoginPass==true? 
           loginVm.showPassword:
           isRegPass==true?
            registerVm.showPasswordForReg:
            isConfRegPass==true ? registerVm.showConfPasswordForReg:true
           ,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: isLoginPass == true
              ? InkWell(
                  child: Icon(AppIcons.hiddenPassIcon,
                      color: loginVm.showPassword == false
                          ? AppColors.secondryColor
                          : AppColors.mainColor),
                  onTap: () {
                    loginVm.showHidePass();
                  },
                )
              : isRegPass == true
                  ? InkWell(
                      child: Icon(AppIcons.hiddenPassIcon,
                          color: registerVm.showPasswordForReg == false
                              ? AppColors.secondryColor
                              : AppColors.mainColor),
                      onTap: () {
                        registerVm.showHidePass();
                      },
                    )
                  : isConfRegPass == true
                      ? InkWell(
                          child: Icon(AppIcons.hiddenPassIcon,
                              color: registerVm.showConfPasswordForReg == false
                                  ? AppColors.secondryColor
                                  : AppColors.mainColor),
                          onTap: () {
                            registerVm.showHideConfPass();
                          },
                        )
                      : const SizedBox(),
          border: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: AppColors.mainColor),
            borderRadius: BorderRadius.circular(20),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: AppColors.mainColor),
            borderRadius: BorderRadius.circular(20),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: AppColors.mainColor),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: Colors.white),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class AuthTextField extends StatelessWidget {
  String? hintText;
  TextEditingController? controller = TextEditingController();
  AuthTextField({
    Key? key,
    this.hintText,
    this.controller
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginViewModel>(
      builder: (context, value, child) => TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: AppColors.mainColor),
            borderRadius: BorderRadius.circular(20),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: AppColors.mainColor),
            borderRadius: BorderRadius.circular(20),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: AppColors.mainColor),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: Colors.white),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
