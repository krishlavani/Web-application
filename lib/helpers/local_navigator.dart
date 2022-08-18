import 'package:flutter/material.dart';
import 'package:web/constants/controllers.dart';
import 'package:web/routing/router.dart';
import 'package:web/routing/routes.dart';

Navigator localNavigator() => Navigator(
  key: navigationController.navigationKey,
  initialRoute: OverViewPageRoute,
  onGenerateRoute: generateRoute,
);
