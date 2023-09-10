import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rate_it/features/auth/presentation/viewModel/login_view_model.dart';

import '../../../../core/constants/app_icons.dart';
import '../../../../core/utiles/app_colors.dart';

// ignore: must_be_immutable
class PassTextField extends StatelessWidget {
  String? hintText;
  bool? isLoginPass = false;
  bool? isRegPass = false;
  bool? isConfRegPass = false;
  PassTextField(
      {Key? key,
      this.hintText,
      this.isRegPass,
      this.isConfRegPass,
      this.isLoginPass})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginViewModel>(
      builder: (context, value, child) => TextFormField(
        obscureText: isLoginPass==true? 
           value.showPassword:
           isRegPass==true?
            value.showPasswordForReg:
            isConfRegPass==true?value.showConfPasswordForReg:true
           ,
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: isLoginPass == true
              ? InkWell(
                  child: Icon(AppIcons.hiddenPassIcon,
                      color: value.showPassword == false
                          ? AppColors.secondryColor
                          : AppColors.mainColor),
                  onTap: () {
                    value.showOrHidePass();
                  },
                )
              : isRegPass == true
                  ? InkWell(
                      child: Icon(AppIcons.hiddenPassIcon,
                          color: value.showPasswordForReg == false
                              ? AppColors.secondryColor
                              : AppColors.mainColor),
                      onTap: () {
                        value.showOrHidePassForReg();
                      },
                    )
                  : isConfRegPass == true
                      ? InkWell(
                          child: Icon(AppIcons.hiddenPassIcon,
                              color: value.showConfPasswordForReg == false
                                  ? AppColors.secondryColor
                                  : AppColors.mainColor),
                          onTap: () {
                            value.showOrHideConfPassReg();
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

  AuthTextField({
    Key? key,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginViewModel>(
      builder: (context, value, child) => TextFormField(
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