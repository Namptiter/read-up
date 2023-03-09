import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:read_up/theme/app_theme.dart';
import 'package:read_up/ui/main/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: DAppTheme.lightTheme,
      darkTheme: DAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const MainScreen(),
    );
  }
}
