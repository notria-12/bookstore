import 'package:bookstore_app/src/navigation/routes.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = ThemeFactory.light(ColorScheme.fromSeed(seedColor: Colors.white),);
    return MaterialApp.router(
      title: 'Atos Livraria',
      theme: theme.theme,
      routerConfig: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}