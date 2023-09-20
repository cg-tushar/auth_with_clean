import 'dart:async';

import 'package:clean_arch/widgets/base_snackbar_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'infrastructure/di/di.dart';
import 'infrastructure/navigation/navigation.dart';
import 'infrastructure/navigation/routes.dart';

void main() async {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    Dependencies.init();

    var initialRoute = await Routes.initialRoute;
    runApp(Main(initialRoute));
  }, (error, stack) {
    showSnackBar(error.toString());
  });
}

class Main extends StatelessWidget {
  final String initialRoute;
  const Main(this.initialRoute, {super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: initialRoute,
      getPages: Nav.routes,
    );
  }
}
