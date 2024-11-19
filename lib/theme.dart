import 'package:flutter/material.dart';

final lightTheme=ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.purple,
    primary: Colors.grey[300],      // 좌석 위젯
    secondary: Colors.white,        // home_page 역 선택 박스
    tertiary: Colors.black,         // 텍스트
    brightness: Brightness.light,
  ),

  dividerColor: Colors.grey[200]!,  // home_page 배경
  highlightColor: Colors.purple,

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      backgroundColor: WidgetStatePropertyAll(Colors.purple),
      foregroundColor: WidgetStatePropertyAll(Colors.white),
    ),
  ),
);

final darkTheme=ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.purple,
    primary: Colors.grey[700],      // 좌석 위젯
    secondary: Colors.grey[700],    // home_page 역 선택 박스
    tertiary: Colors.white,         // 텍스트
    brightness: Brightness.light,
  ),

  scaffoldBackgroundColor: Colors.black,

  dividerColor: Colors.black,       // home_page 배경
  highlightColor: Colors.purple,

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      backgroundColor: WidgetStatePropertyAll(Colors.purple),
      foregroundColor: WidgetStatePropertyAll(Colors.white),
    ),
  ),
);