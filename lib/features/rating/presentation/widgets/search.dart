import 'package:flutter/material.dart';
import 'package:rate_it/core/constants/app_strings/app_strings.dart';

import '../../../../core/constants/responcive.dart';
import '../../../../core/utiles/app_colors.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
              width: AppResponcive.aWidth(context, 0.95),
              child: TextFormField(
                style: const TextStyle(color: AppColors.secondryColor),
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.search, size: 30),
                  hintText: AppStrings.search,
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2, color: AppColors.secondryColor),
                    // borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 2, color: AppColors.secondryColor),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 2, color: AppColors.secondryColor),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 2, color: Colors.yellow),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            );
  }
}