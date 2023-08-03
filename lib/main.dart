import 'package:asp/asp.dart';
import 'package:contamais1/src/app_module.dart';
import 'package:contamais1/src/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  runApp(RxRoot(
      child: ModularApp(
    module: AppModule(),
    child: const AppWidget(),
  )));
}
