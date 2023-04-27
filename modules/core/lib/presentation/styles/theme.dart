import 'package:core/core.dart';

abstract class Theme {
  static ThemeData get lightMaterialTheme {
    return ThemeData.light().copyWith(
      scaffoldBackgroundColor: Colors.background,
      colorScheme: _getColorScheme(),
      appBarTheme: _getAppBarTheme(),
      elevatedButtonTheme: _getElevatedButtonThemeData(),
      outlinedButtonTheme: _getOutlinedButtonThemeData(),
      textButtonTheme: _getTextButtonThemeData(),
      inputDecorationTheme: _getInputDecorationTheme(),
      textTheme: _getTextTheme(),
    );
  }

  static ColorScheme _getColorScheme() {
    return ColorScheme.light(
      primary: Colors.primary,
      secondary: Colors.accent,
    );
  }

  static AppBarTheme _getAppBarTheme() {
    return AppBarTheme(
      titleTextStyle: TextStyles.main.copyWith(color: Colors.primary),
      foregroundColor: Colors.primary,
      backgroundColor: Colors.background,
      elevation: 0,
      shape: Border(
        bottom: BorderSide(
          color: Colors.grayLight,
          width: 1,
        ),
      ),
    );
  }

  static ElevatedButtonThemeData _getElevatedButtonThemeData() {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadiuses.all10,
          ),
        ),
        minimumSize: MaterialStateProperty.all(Sizes.button),
      ),
    );
  }

  static OutlinedButtonThemeData _getOutlinedButtonThemeData() {
    return OutlinedButtonThemeData(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadiuses.all10,
          ),
        ),
        side: MaterialStateProperty.all(
          BorderSide(
            color: Colors.primary,
          ),
        ),
        minimumSize: MaterialStateProperty.all(Sizes.button),
      ),
    );
  }

  static TextButtonThemeData _getTextButtonThemeData() {
    return TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(Colors.accent),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(Sizes.button),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadiuses.all10,
          ),
        ),
      ),
    );
  }

  static InputDecorationTheme _getInputDecorationTheme() {
    final border = _getOutlineInputBorder();
    return InputDecorationTheme(
      isDense: true,
      fillColor: Colors.accent,
      contentPadding: Paddings.inputDecorationContent,
      hintStyle: TextStyles.main.copyWith(color: Colors.subtitle),
      labelStyle: TextStyles.main,
      border: border,
      errorBorder: border,
      enabledBorder: border,
      focusedErrorBorder: border,
      focusedBorder: border,
    );
  }

  static OutlineInputBorder _getOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grayLight,
        width: 1,
      ),
      borderRadius: BorderRadiuses.all10,
    );
  }

  static TextTheme _getTextTheme() {
    return TextTheme(
      labelLarge: TextStyles.main,
      titleMedium: TextStyles.main,
      bodyMedium: TextStyles.min,
      bodyLarge: TextStyles.min,
      bodySmall: TextStyles.min,
    );
  }
}
