import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kb_checker/helpers/extensions.dart';
import 'package:kb_checker/providers/key_listener.dart';
import 'package:kb_checker/providers/layouts.dart';
import 'package:kb_checker/widgets/sections.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class KeyboardPage extends StatefulWidget {
  const KeyboardPage({super.key});

  @override
  State<KeyboardPage> createState() => _KeyboardPageState();
}

class _KeyboardPageState extends State<KeyboardPage> {
  final keyNotifier = KeyListenerProvider().keyNotifier;

  bool _onKey(KeyEvent event) {
    keyNotifier.value = event;
    return false;
  }

  @override
  void initState() {
    super.initState();
    ServicesBinding.instance.keyboard.addHandler(_onKey);
  }

  @override
  void dispose() {
    ServicesBinding.instance.keyboard.removeHandler(_onKey);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final layout = LayoutProvider();
    final keyListener = KeyListenerProvider();
    const gap = SizedBox.square(dimension: 20.0);

    return Scaffold(
      backgroundColor: AdaptiveTheme.of(context).brightness == Brightness.light
          ? const Color.fromARGB(255, 200, 200, 200)
          : null,
      body: Focus(
        autofocus: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Focus(
              descendantsAreFocusable: false,
              canRequestFocus: false,
              child: Padding(
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
                    ValueListenableBuilder(
                      valueListenable: layout.layoutNotifier,
                      builder: (_, String lay, ___) {
                        return DropdownButton(
                          value: lay,
                          items: layout.layouts
                              .map(
                                (l) => DropdownMenuItem(
                                  value: l,
                                  child: Text(l),
                                ),
                              )
                              .toList(),
                          onChanged: (String? value) {
                            if (value != null) {
                              layout.currentLayout = value;
                            }
                          },
                        );
                      },
                    ),
                    gap,
                    ValueListenableBuilder(
                      valueListenable: layout.localeNotifier,
                      builder: (_, Locale loc, ___) {
                        return DropdownButton(
                          value: loc,
                          items: layout.locales
                              .map(
                                (l) => DropdownMenuItem(
                                  value: l,
                                  child: Text(l.toLanguageTag()),
                                ),
                              )
                              .toList(),
                          onChanged: (Locale? value) {
                            if (value != null) {
                              layout.currentLocale = value;
                            }
                          },
                        );
                      },
                    ),
                    // gap,
                    // gap,
                    // Text(
                    //   '${AppLocalizations.of(context).checkerMode}:',
                    //   style: const TextStyle(
                    //     fontWeight: FontWeight.bold,
                    //     fontSize: 18.0,
                    //   ),
                    // ),
                    // gap,
                    // StatefulBuilder(
                    //   builder: (_, setInnerState) {
                    //     return ToggleButtons(
                    //       borderRadius: BorderRadius.circular(10.0),
                    //       isSelected: [
                    //         keyListener.mode == KeyTesterMode.phisical,
                    //         keyListener.mode == KeyTesterMode.logical,
                    //       ],
                    //       onPressed: (i) => setInnerState(() {
                    //         final mode = KeyTesterMode.values[i];
                    //         keyListener.mode = mode;
                    //       }),
                    //       children: [
                    //         Padding(
                    //           padding:
                    //               const EdgeInsets.symmetric(horizontal: 10.0),
                    //           child: Text(AppLocalizations.of(context)
                    //               .physicalKeyboardKey),
                    //         ),
                    //         Padding(
                    //           padding:
                    //               const EdgeInsets.symmetric(horizontal: 10.0),
                    //           child: Text(AppLocalizations.of(context)
                    //               .logicalKeyboardKey),
                    //         ),
                    //       ],
                    //     );
                    //   },
                    // ),
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
            Focus(
              descendantsAreFocusable: false,
              canRequestFocus: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 20.0,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ValueListenableBuilder(
                        valueListenable: keyNotifier,
                        builder: (_, KeyEvent? event, ___) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: event == null
                                          ? ''
                                          : '${AppLocalizations.of(context).physicalKeyboardKey}: ',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          event?.physicalKey.getInfo(context) ??
                                              '',
                                    ),
                                  ],
                                ),
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: event == null
                                          ? ''
                                          : '${AppLocalizations.of(context).logicalKeyboardKey}: ',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          event?.logicalKey.getInfo(context) ??
                                              '',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      child: Text(AppLocalizations.of(context).reset),
                      onPressed: () {
                        keyNotifier.value = null;
                        keyListener.clear();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
