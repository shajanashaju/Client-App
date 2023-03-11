import 'package:clientapp/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'configs/apptheme.dart';
import 'l10n/l10n.dart';
import 'provider/locale_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final appRouter = AppRouter();
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => LocalProvider(),
      builder: (context, child) {
        final provider = Provider.of<LocalProvider>(context);

        return MaterialApp.router(
          title: 'Client App',
          theme: AppTheme.lightTheme,
          themeMode: ThemeMode.light,
          debugShowCheckedModeBanner: false,
          routerDelegate: appRouter.delegate(),
          routeInformationParser: appRouter.defaultRouteParser(),
          locale: provider.locale,
          supportedLocales: L10n.all,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
        );
      });
}
