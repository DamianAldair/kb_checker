import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:kb_checker/pages/keyboard_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

const String appTitle = 'KB Checker';

void main() {
  runApp(const MainApp());
  doWhenWindowReady(() {
    const size = Size(1230, 520);
    appWindow.minSize = size;
    appWindow.size = size;
    appWindow.alignment = Alignment.center;
    appWindow.title = appTitle;
    appWindow.show();
  });
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      debugShowFloatingThemeButton: true,
      light: ThemeData.light().copyWith(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
      ),
      dark: ThemeData.dark().copyWith(
        useMaterial3: true,
      ),
      initial: AdaptiveThemeMode.system,
      builder: (ThemeData light, ThemeData dark) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: const Locale('es'),
          theme: light,
          darkTheme: dark,
          title: appTitle,
          home: const KeyboardPage(),
        );
      },
    );
  }
}
