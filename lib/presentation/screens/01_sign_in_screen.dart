import 'package:e_learn/core/config/app_images.dart';
import 'package:e_learn/core/config/app_strings.dart';
import 'package:e_learn/presentation/blocs/main_layout/main_layout_cubit.dart';
import 'package:e_learn/presentation/components/main_button.dart';
import 'package:e_learn/presentation/screens/02_main_layout.dart';
import 'package:e_learn/presentation/screens/03_explore_screen.dart';
import 'package:e_learn/presentation/screens/04_learn_screen.dart';
import 'package:e_learn/presentation/widgets/custom_text.dart';
import 'package:e_learn/presentation/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../components/auth_botton.dart';
import '../components/auth_field.dart';
import '../components/clickable_text.dart';
import '../components/custom_page_transition.dart';
import '../components/custom_svg.dart';
import '../components/remember_me.dart';
import '05_Downloads_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Row(

            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  CustomSvg(
                    AppImages.signIn,
                    height: 17.h,
                    width: 17.h,
                  ),

                  Space(
                    height: 3.5.h,
                  ),

                  CustomText(
                      text: AppStrings.signInTitle,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700,
                  ),

                  Space(
                    height: 4.h,
                  ),

                  AuthField(
                    lable: '        ${AppStrings.emailTitle}*',
                    hint: AppStrings.emailHint,

                  ),

                  Space(height: 2.h,),

                  AuthField(
                    lable: '        ${AppStrings.passwordTitle}*',
                    hint: AppStrings.passwordHint,
                  ),

                  Space(height: 2.h,),

                  const RememberMe(),

                  Space(height: 2.h,),

                  MainButton(
                    width: 85.w,
                    height: 6.h,
                    onTap: ()=> Navigator.pushAndRemoveUntil(
                        context,
                        CustomPageTransition(
                            MainLayout(
                              screens: const [
                                ExploreScreen(),
                                LearnScreen(),
                                DownloadsScreen()
                              ],
                              states: [
                                MainLayoutExplore(),
                                MainLayoutLearn(),
                                MainLayoutDownloads(),
                              ],
                            )
                        ),
                            (route) => false
                    ),
                    child: CustomText(
                      text: AppStrings.sigIn,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 10.sp,
                  ),),

                  Space(height: 2.h,),

                  ClickableText(clickableText: AppStrings.forgotPassword,),

                  Space(height: 4.h,),

                  CustomText(text: AppStrings.diveder),

                  Space(height: 4.h,),

                  AuthBotton(
                    text: AppStrings.google,
                    logo: AppImages.google,
                  ),

                  Space(height: 4.h,),

                  ClickableText(
                    clickableText: "  ${AppStrings.sigIn}",
                    noneClickableText: AppStrings.dontHaveAccount,
                  ),

                ],
              ),
            ],
          ),
        )
    );
  }
}
