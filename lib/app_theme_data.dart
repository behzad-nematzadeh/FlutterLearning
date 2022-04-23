import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class AppThemeData {
  static const _lightFillColor = Colors.black;
  static const _darkFillColor = Colors.white;

  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);
  static final Color _darkFocusColor = Colors.white.withOpacity(0.12);

  static final ThemeData _lightThemeData = ThemeData.light();
  static final ThemeData _darkThemeData = ThemeData.dark();

  static ThemeData lightThemeData(BuildContext context) =>
      themeData(_lightThemeData, context, lightColorScheme, _lightFocusColor);

  static ThemeData darkThemeData(BuildContext context) =>
      themeData(_darkThemeData, context, darkColorScheme, _darkFocusColor);

  static ThemeData themeData(ThemeData themeData, BuildContext context,
      ColorScheme colorScheme, Color focusColor) {
    return themeData.copyWith(
        colorScheme: colorScheme,
        textTheme: _textTheme(themeData.textTheme, colorScheme.onPrimary),
        appBarTheme: const AppBarTheme(
          centerTitle: false,
          titleTextStyle: TextStyle(
            fontWeight: _regular,
            fontSize: 14.0,
            fontFamily: 'RobotoSlab-Regular',
          ),
        ),
        bottomAppBarTheme: BottomAppBarTheme(
          color: colorScheme.primary,
        ),
        buttonTheme: ButtonThemeData(
          textTheme: ButtonTextTheme.primary,
          colorScheme: colorScheme,
        ),
        floatingActionButtonTheme: themeData.floatingActionButtonTheme
            .copyWith(backgroundColor: colorScheme.primary),
        iconTheme: IconThemeData(color: colorScheme.onPrimary),
        toggleableActiveColor: colorScheme.primary,
        indicatorColor: colorScheme.onPrimary,
        primaryColor: colorScheme.primary,
        scaffoldBackgroundColor: colorScheme.background,
        highlightColor: Colors.transparent,
        snackBarTheme: SnackBarThemeData(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Color.alphaBlend(
            _lightFillColor.withOpacity(0.80),
            _darkFillColor,
          ),
          contentTextStyle:
              _textTheme(themeData.textTheme, colorScheme.onPrimary)
                  .subtitle1!
                  .apply(color: _darkFillColor),
        ),
        cardTheme: const CardTheme(
            color: Colors.grey,
            margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
            elevation: 8.0));
  }

  static ColorScheme lightColorScheme = const ColorScheme.dark().copyWith(
    primary: const Color(0xFFB93C5D),
    primaryVariant: const Color(0xFF117378),
    secondary: const Color(0xFFEFF3F3),
    secondaryVariant: const Color(0xFFFAFBFB),
    background: const Color(0xFFE6EBEB),
    onSurface: const Color(0xFF241E30),
    brightness: Brightness.light,
  );

  static ColorScheme darkColorScheme = const ColorScheme.light().copyWith(
    primary: const Color(0xFFFF8383),
    primaryVariant: const Color(0xFF1CDEC9),
    secondary: const Color(0xFF4D1F7C),
    secondaryVariant: const Color(0xFF451B6F),
    background: const Color(0xFF241E30),
    surface: const Color(0xFF1F1929),
    onBackground: Colors.white.withOpacity(0.05),
    onSurface: _darkFillColor,
    brightness: Brightness.dark,
  );

  static const _regular = FontWeight.w400;
  static const _medium = FontWeight.w500;
  static const _semiBold = FontWeight.w600;
  static const _bold = FontWeight.w700;

  static TextTheme _textTheme(TextTheme textTheme, Color color) {
    return textTheme
        .copyWith(
          bodyText1: textTheme.bodyText1!.copyWith(
            fontWeight: _regular,
            fontSize: 14.0,
            fontFamily: 'Ubuntu-Regular',
          ),
          headline4: textTheme.headline4!.copyWith(
            fontWeight: _bold,
            fontSize: 20.0,
            fontFamily: 'Ubuntu-Bold',
          ),
          subtitle1: textTheme.subtitle1!.copyWith(
            fontWeight: _medium,
            fontSize: 18.0,
            fontFamily: 'RobotoSlab-SemiBold',
          ),
          caption: textTheme.caption!.copyWith(
            fontWeight: _semiBold,
            fontSize: 16.0,
            fontFamily: 'Ubuntu-SemiBold',
          ),
          button: textTheme.button!.copyWith(
            fontWeight: _semiBold,
            fontSize: 14.0,
            fontFamily: 'Ubuntu-Medium',
          ),
        )
        .apply(bodyColor: color);
  }
}
