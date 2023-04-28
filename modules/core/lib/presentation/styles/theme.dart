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
      bottomNavigationBarTheme: _getBottomNavigationBarThemeData(),
      textTheme: _getTextTheme(),
      dividerTheme: _getDividerThemeData(),
      tabBarTheme: _getTabBarTheme(),
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

  static BottomNavigationBarThemeData _getBottomNavigationBarThemeData() {
    return BottomNavigationBarThemeData(
      backgroundColor: Colors.background,
      selectedItemColor: Colors.accent,
      unselectedItemColor: Colors.subtitle,
      selectedLabelStyle: TextStyles.min,
      unselectedLabelStyle: TextStyles.min,
      elevation: 0,
    );
  }

  static DividerThemeData _getDividerThemeData() {
    return DividerThemeData(
      color: Colors.grayLight,
      thickness: 1,
      indent: 0,
      endIndent: 0,
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

  static TabBarTheme _getTabBarTheme() {
    return TabBarTheme(
      labelColor: Colors.primary,
      unselectedLabelColor: Colors.subtitle,
      labelStyle: TextStyles.title,
      unselectedLabelStyle: TextStyles.title,
      indicator: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.accent,
            width: Sizes.divider.height,
          ),
        ),
      ),
    );
  }
}
