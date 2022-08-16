import 'package:flavor_getx/flavors/flavor_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final package =
      await MethodChannel('flavor').invokeMethod<String>("getPackage");
  print('quocpa $package');
  // 3
  await FlavorConfig().getFlavor();

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
