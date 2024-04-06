import 'package:complete_advenced_flutter/presentation/resources/color_manager.dart';
import 'package:complete_advenced_flutter/presentation/resources/font_manager.dart';
import 'package:complete_advenced_flutter/presentation/resources/styles_manager.dart';
import 'package:complete_advenced_flutter/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme(BuildContext context) {
  return ThemeData(
    // main colors of the app
    primaryColor: ColorManager.primary,
    primaryColorDark: ColorManager.darkColor,
    primaryColorLight: ColorManager.primaryOpacity70,
    disabledColor: ColorManager.grey1,
    // ripple color
    splashColor: ColorManager.primaryOpacity70,
    // will be use incase of disabled button for example
    colorScheme:
        Theme.of(context).colorScheme.copyWith(secondary: ColorManager.grey2),
    // card view theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
    ),
    // App bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.primaryOpacity70,
      titleTextStyle:
          getRegularStyle(color: Colors.white, fontSize: FontSize.s16),
    ),

    // button theme
    buttonTheme: ButtonThemeData(
      shape: StadiumBorder(),
      disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.primaryOpacity70,
    ),

    // elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(color: ColorManager.white),
        foregroundColor: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppSize.s12,
          ),
        ),
      ),
    ),

    // text Theme
    textTheme: TextTheme(
      displayMedium: getSemiBoldStyle(
          color: ColorManager.darkColor, fontSize: FontSize.s16),
      titleSmall:
          getMediumStyle(color: ColorManager.lightGrey, fontSize: FontSize.s14),
      labelLarge: getRegularStyle(color: ColorManager.grey1),
      bodyMedium: getRegularStyle(color: ColorManager.grey),
    ),
    // input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(AppPadding.p8),

      // hint style
      hintStyle: getRegularStyle(color: ColorManager.grey1),

      // label style
      labelStyle: getMediumStyle(color: ColorManager.darkColor),

      // error style
      errorStyle: getRegularStyle(color: ColorManager.error),

      // enable border
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
      ),

      // focused border
      focusedBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
      ),

      // error border
      errorBorder: OutlineInputBorder(
        borderSide:
        BorderSide(color: ColorManager.error, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
      ),

      // focused error border
      focusedErrorBorder: OutlineInputBorder(
        borderSide:
        BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
    ),
  );
}
