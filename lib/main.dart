import 'package:flutter/material.dart';
import 'package:flutter_application_gis/common/router/app_pages.dart';
import 'package:get/get.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      // logWriterCallback: Logger.write,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      unknownRoute: AppPages.unknownRoute,
      // locale: TranslationService.locale,
      // fallbackLocale: TranslationService.fallbackLocale,
      // translations: TranslationService(),
    );
  }
}
