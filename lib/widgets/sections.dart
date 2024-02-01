import 'package:flutter/material.dart';
import 'package:kb_checker/helpers/getters.dart';
import 'package:kb_checker/providers/layouts.dart';
import 'package:kb_checker/widgets/buttons.dart';

class FunctionSection extends StatelessWidget {
  const FunctionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        KeyButton('Esc', null, null),
        SizedBox(width: keySize + 7),
        KeyButton('F1', null, null),
        KeyButton('F2', null, null),
        KeyButton('F3', null, null),
        KeyButton('F4', null, null),
        SizedBox(width: keySize / 2),
        KeyButton('F5', null, null),
        KeyButton('F6', null, null),
        KeyButton('F7', null, null),
        KeyButton('F8', null, null),
        SizedBox(width: keySize / 2),
        KeyButton('F9', null, null),
        KeyButton('F10', null, null),
        KeyButton('F11', null, null),
        KeyButton('F12', null, null),
      ],
    );
  }
}

class AlphanumericSection extends StatelessWidget {
  const AlphanumericSection({super.key});

  @override
  Widget build(BuildContext context) {
    final lp = LayoutProvider();
    return ValueListenableBuilder(
      valueListenable: lp.layoutNotifier,
      builder: (_, String layout, ___) => ValueListenableBuilder(
        valueListenable: lp.localeNotifier,
        builder: (_, Locale locale, ___) {
          final isAnsi = layout.toUpperCase() == 'ANSI';
          final langCode = locale.languageCode;
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            // TODO: quitar cross start
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  KeyButton('|', '°', '¬'),
                  KeyButton('1', '!', null),
                  KeyButton('2', '"', null),
                  KeyButton('3', '#', null),
                  KeyButton('4', '\$', null),
                  KeyButton('5', '%', null),
                  KeyButton('6', '&', null),
                  KeyButton('7', '/', null),
                  KeyButton('8', '(', null),
                  KeyButton('9', ')', null),
                  KeyButton('0', '=', null),
                  KeyButton('\'', '?', '\\'),
                  KeyButton('¿', '¡', null),
                  KeyButton(
                    null,
                    null,
                    null,
                    icon: Icon(Icons.backspace_outlined, size: 15),
                    width: keySize * 2,
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const KeyButton(
                            null,
                            null,
                            null,
                            icon: Icon(Icons.keyboard_tab, size: 15),
                            width: keySize * 1.5,
                          ),
                          const KeyButton('Q', null, null),
                          const KeyButton('W', null, null),
                          const KeyButton('E', null, null),
                          const KeyButton('R', null, null),
                          const KeyButton('T', null, null),
                          const KeyButton('Y', null, null),
                          const KeyButton('U', null, null),
                          const KeyButton('I', null, null),
                          const KeyButton('O', null, null),
                          const KeyButton('P', null, null),
                          const KeyButton('\u00b4', '¨', null),
                          const KeyButton('*', '+', '~'),
                          if (isAnsi)
                            const KeyButton('}', ']', '`',
                                width: keySize * 1.5),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const KeyButton(
                            null,
                            null,
                            null,
                            icon: Icon(Icons.upload, size: 15),
                            width: keySize * 1.9,
                          ),
                          const KeyButton('A', null, null),
                          const KeyButton('S', null, null),
                          const KeyButton('D', null, null),
                          const KeyButton('F', null, null),
                          const KeyButton('G', null, null),
                          const KeyButton('H', null, null),
                          const KeyButton('J', null, null),
                          const KeyButton('K', null, null),
                          const KeyButton('L', null, null),
                          const KeyButton('Ñ', null, null),
                          const KeyButton('{', '[', '^'),
                          if (!isAnsi) const KeyButton('}', ']', '`'),
                          if (isAnsi)
                            const KeyButton(
                              null,
                              null,
                              null,
                              icon: Icon(Icons.subdirectory_arrow_left),
                              width: keySize * 2.3,
                            ),
                        ],
                      ),
                    ],
                  ),
                  const IsoEnterButton(),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  KeyButton(
                    null,
                    null,
                    null,
                    icon: const Icon(Icons.arrow_upward, size: 15),
                    width: keySize * (isAnsi ? 2.48 : 1.3),
                  ),
                  if (!isAnsi) const KeyButton('<', '>', null),
                  const KeyButton('Z', null, null),
                  const KeyButton('X', null, null),
                  const KeyButton('C', null, null),
                  const KeyButton('V', null, null),
                  const KeyButton('B', null, null),
                  const KeyButton('N', null, null),
                  const KeyButton('M', null, null),
                  const KeyButton(',', ';', null),
                  const KeyButton('.', ':', null),
                  const KeyButton('-', '_', null),
                  const KeyButton(
                    null,
                    null,
                    null,
                    icon: Icon(Icons.arrow_upward, size: 15),
                    width: keySize * 2.9,
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const KeyButton('Ctrl', null, null, width: keySize * 1.5),
                  KeyButton(
                    null,
                    null,
                    null,
                    icon: metaKey,
                    width: keySize * 1.5,
                  ),
                  const KeyButton('Alt', null, null, width: keySize * 1.5),
                  const SpaceButton(width: keySize * 5.55),
                  const KeyButton('Alt', null, null, width: keySize * 1.5),
                  KeyButton(
                    null,
                    null,
                    null,
                    icon: metaKey,
                    width: keySize * 1.5,
                  ),
                  const KeyButton(
                    null,
                    null,
                    null,
                    icon: Icon(Icons.list_alt, size: 20),
                    width: keySize * 1.5,
                  ),
                  const KeyButton('Ctrl', null, null, width: keySize * 1.5),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

class SystemSection extends StatelessWidget {
  const SystemSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        KeyButton(
          null,
          null,
          null,
          icon: Icon(Icons.screenshot_monitor, size: 15),
        ),
        KeyButton(
          null,
          null,
          null,
          icon: Icon(Icons.unfold_more, size: 15),
        ),
        KeyButton(
          null,
          null,
          null,
          icon: Icon(Icons.pause, size: 15),
        ),
      ],
    );
  }
}

class CursorSection extends StatelessWidget {
  const CursorSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: LayoutProvider().localeNotifier,
      builder: (_, Locale locale, ___) {
        final langCode = locale.languageCode;
        return Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                KeyButton(
                  getKeyInsert(langCode),
                  null,
                  null,
                  firstLevelNoBold: true,
                ),
                KeyButton(
                  getKeyHome(langCode),
                  null,
                  null,
                  firstLevelNoBold: true,
                ),
                KeyButton(
                  getKeyPgUp(langCode),
                  null,
                  null,
                  firstLevelNoBold: true,
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                KeyButton(
                  getKeyDelete(langCode),
                  null,
                  null,
                  firstLevelNoBold: true,
                ),
                KeyButton(
                  getKeyEnd(langCode),
                  null,
                  null,
                  firstLevelNoBold: true,
                ),
                KeyButton(
                  getKeyPgDn(langCode),
                  null,
                  null,
                  firstLevelNoBold: true,
                ),
              ],
            ),
            const SizedBox(height: keySize + 7),
            const KeyButton(
              null,
              null,
              null,
              icon: Icon(Icons.keyboard_arrow_up),
            ),
            const Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                KeyButton(
                  null,
                  null,
                  null,
                  icon: Icon(Icons.keyboard_arrow_left),
                ),
                KeyButton(
                  null,
                  null,
                  null,
                  icon: Icon(Icons.keyboard_arrow_down),
                ),
                KeyButton(
                  null,
                  null,
                  null,
                  icon: Icon(Icons.keyboard_arrow_right),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

class NumpadSection extends StatelessWidget {
  const NumpadSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: LayoutProvider().localeNotifier,
      builder: (_, Locale locale, ___) {
        final langCode = locale.languageCode;
        return Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: keySize + 7),
            const Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                KeyButton(
                  'Num',
                  null,
                  null,
                  icon: Icon(Icons.looks_one_outlined, size: 20),
                ),
                KeyButton('/', null, null),
                KeyButton('*', null, null),
                KeyButton('-', null, null),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        KeyButton(
                          getKeyHome(langCode),
                          '7',
                          null,
                          firstLevelNoBold: true,
                        ),
                        const KeyButton('↑', '8', null),
                        KeyButton(
                          getKeyPgUp(langCode),
                          '9',
                          null,
                          firstLevelNoBold: true,
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        KeyButton('←', '4', null),
                        KeyButton('', '5', null),
                        KeyButton('→', '6', null),
                      ],
                    ),
                  ],
                ),
                const KeyButton(
                  '+',
                  null,
                  null,
                  height: keySize * 2 + 7,
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        KeyButton(
                          getKeyEnd(langCode),
                          '1',
                          null,
                          firstLevelNoBold: true,
                        ),
                        const KeyButton('↓', '2', null),
                        KeyButton(
                          getKeyPgDn(langCode),
                          '3',
                          null,
                          firstLevelNoBold: true,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        KeyButton(
                          getKeyInsert(langCode),
                          '0',
                          null,
                          firstLevelNoBold: true,
                          width: keySize * 2 + 7,
                        ),
                        KeyButton(
                          getKeyDelete(langCode),
                          '.',
                          null,
                          firstLevelNoBold: true,
                        ),
                      ],
                    ),
                  ],
                ),
                const KeyButton(
                  null,
                  null,
                  null,
                  icon: Icon(Icons.subdirectory_arrow_left),
                  height: keySize * 2 + 7,
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
