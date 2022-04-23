import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/app_routing.dart';
import 'package:flutter_learning/app_theme_data.dart';

void main() => runApp(
      Builder(
        builder: (context) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppThemeData.lightThemeData(context),
            darkTheme: AppThemeData.darkThemeData(context),
            initialRoute: '/',
            onGenerateRoute: AppRoutes.onGenerateRoute,
            onUnknownRoute: AppRoutes.onUnknownRoute,
          );
        },
      ),
    );
