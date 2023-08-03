import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/setstate');
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: '_',
      routerConfig: Modular.routerConfig,
    );
  }
}
