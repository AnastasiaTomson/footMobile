import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:foot_mobile/foot_mobile_app.dart';
import 'package:foot_mobile/src/config/themes/app_themes.dart';
import 'package:foot_mobile/src/locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: AppTheme.dark.scaffoldBackgroundColor,
    systemNavigationBarColor: AppTheme.dark.scaffoldBackgroundColor
  ));
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(FootMobileApp());

  FlutterNativeSplash.remove();
}

