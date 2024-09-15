import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'core/app_providers.dart';
import 'core/app_routes.dart';
import 'core/app_theme.dart';
import 'core/injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        builder: (_, child) {
          return MaterialApp.router(
            title: 'Shipping Tracker',
            theme: AppTheme.appLightTheme,
            darkTheme: AppTheme.darkTheme,
            routerConfig: AppRoutes.router,
          );
        });
  }
}
