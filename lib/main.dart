import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/core/setting_provider.dart';
import 'package:islami/moduls/hadith/hadith_details_view.dart';
import 'package:islami/moduls/quran/quran_details_view.dart';
import 'package:islami/moduls/splash/splash_view.dart';
import 'package:provider/provider.dart';

import 'core/theme/application_theme_data.dart';
import 'layout/layout_view.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SettingProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);
    return MaterialApp(
      title: 'Islami App',
      themeMode: provider.curThemeMode,
      darkTheme: ApplicationThemeManager.darkTheme,
      theme: ApplicationThemeManager.lightTheme,
      debugShowCheckedModeBanner: false,
      locale: Locale(provider.curLanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        LayoutView.routeName: (context) => const LayoutView(),
        QuranDetailsView.routeName: (context) => const QuranDetailsView(),
        HadithDetailsView.routeName: (context) => const HadithDetailsView(),
      },
    );
  }
}
