import 'package:core/core.dart';

abstract class TextStyles {
  static const title = TextStyle(
    fontFamily: '.SF Pro Display',
    fontWeight: FontWeight.w500,
    fontSize: 20,
    height: 24 / 20,
    color: Colors.primary,
  );

  static const min = TextStyle(
    fontFamily: '.SF Pro Display',
    fontWeight: FontWeight.w400,
    fontSize: 12,
    height: 21 / 12,
    color: Colors.primary,
  );

  static const main = TextStyle(
    fontFamily: '.SF Pro Display',
    fontWeight: FontWeight.w400,
    fontSize: 15,
    height: 21 / 15,
    color: Colors.primary,
  );
}
