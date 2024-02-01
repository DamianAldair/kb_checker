import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:kb_checker/helpers/layouts.dart';
import 'package:kb_checker/widgets/sections.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class KeyboardPage extends StatelessWidget {
  const KeyboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    const gap = SizedBox.square(dimension: 20.0);

    return Scaffold(
      backgroundColor: AdaptiveTheme.of(context).brightness == Brightness.light
          ? const Color.fromARGB(255, 200, 200, 200)
          : null,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            child: Row(
              children: [
                Text(
                  '${AppLocalizations.of(context).layout}:',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                gap,
                DropdownButton(
                  value: Layout.values.first,
                  items: Layout.values
                      .map(
                        (l) => DropdownMenuItem(
                          value: l,
                          child: Text(l.name.toUpperCase()),
                        ),
                      )
                      .toList(),
                  onChanged: (_) {},
                ),
                gap,
                DropdownButton(
                  value: locales.first,
                  items: locales
                      .map(
                        (l) => DropdownMenuItem(
                          value: l,
                          child: Text(l.toLanguageTag()),
                        ),
                      )
                      .toList(),
                  onChanged: (_) {},
                ),
                const Spacer(),
                ToggleButtons(
                  borderRadius: BorderRadius.circular(10.0),
                  isSelected: [
                    AdaptiveTheme.of(context).mode.isSystem,
                    AdaptiveTheme.of(context).mode.isLight,
                    AdaptiveTheme.of(context).mode.isDark,
                  ],
                  onPressed: (i) => switch (i) {
                    1 => AdaptiveTheme.of(context).setLight(),
                    2 => AdaptiveTheme.of(context).setDark(),
                    _ => AdaptiveTheme.of(context).setSystem(),
                  },
                  children: const [
                    Icon(Icons.brightness_auto),
                    Icon(Icons.brightness_7),
                    Icon(Icons.brightness_2),
                  ],
                ),
                gap,
                gap,
                IconButton(
                  icon: const Icon(Icons.info_outline),
                  tooltip: AppLocalizations.of(context).about,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          const Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  FunctionSection(),
                  SizedBox.square(dimension: 20.0),
                  AlphanumericSection(),
                ],
              ),
              SizedBox.square(dimension: 20.0),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SystemSection(),
                  SizedBox.square(dimension: 20.0),
                  CursorSection(),
                ],
              ),
              SizedBox.square(dimension: 20.0),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox.square(dimension: 20.0),
                  NumpadSection(),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 20.0,
            ),
            child: Row(
              children: [
                const Spacer(),
                ElevatedButton(
                  child: Text(AppLocalizations.of(context).reset),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
