import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:malina/core/routes/routes_name.dart';
import 'package:malina/features/home/presentation/screen/home_screen.dart';


class RoutesPage {

  static Map<String, Widget Function(BuildContext)> routes = {
    Routes.home: (context) => const HomeScreen(),
  };
}
