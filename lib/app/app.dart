import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:avrodi_sharif_clone/utils/tools/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import '../main.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyApp();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (BuildContext contex, Widget? child) {
        return AdaptiveTheme(
          builder: (theme, darkTheme) => GetMaterialApp(
            initialRoute: RouteName.splash,
            onGenerateRoute: AppRouts.generateRoute,
            title: 'Adaptive Theme Demo',
            theme: theme,
            darkTheme: darkTheme,
            //home:  Material(child: ,),
          ),
          light: ThemeData(
              useMaterial3: true,
              brightness: Brightness.light,
              colorSchemeSeed: Colors.blue,
            ),
            initial: AdaptiveThemeMode.light,
            dark: ThemeData(
              useMaterial3: true,
              brightness: Brightness.dark,
              colorSchemeSeed: Colors.blue,
            ),
          );
  }
    );
}}
