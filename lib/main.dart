import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/app_theme_data.dart';
import 'package:flutter_learning/home_page.dart';
import 'package:flutter_learning/login_page.dart';

void main() => runApp(
      Builder(
        builder: (context) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppThemeData.lightThemeData(context),
            darkTheme: AppThemeData.darkThemeData(context),
            initialRoute: '/',
            routes: {
              '/': (context) => const LoginPage(),
              '/home': (context) => const HomePage(),
            },
          );
        },
      ),
    );
