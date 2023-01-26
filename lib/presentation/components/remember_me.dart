import 'package:e_learn/core/config/app_strings.dart';
import 'package:e_learn/presentation/widgets/custom_text.dart';
import 'package:e_learn/presentation/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../core/config/app_theme.dart';

class RememberMe extends StatelessWidget {
  const RememberMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: (){

          },
          borderRadius: BorderRadius.circular(5),
          child: AnimatedContainer(
              duration: const Duration(
                milliseconds: 500
              ),
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              border: Border.all(
                  color: AppTheme.primaryColor,
              ),
              borderRadius: BorderRadius.circular(5)
            ),
          ),
        ),

        Space(
          width: 2.5.w,
        ),
        
        CustomText(
            text: AppStrings.rememberMe,
            fontSize: 9.sp,
            color: Colors.black54,
          fontWeight: FontWeight.w600,
        )
      ],
    );
  }
}
