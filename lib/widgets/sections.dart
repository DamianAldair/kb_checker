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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  KeyButton(
                    getKeyBeforeNums(locale).$1,
                    getKeyBeforeNums(locale).$2,
                    getKeyBeforeNums(locale).$3,
                  ),
                  KeyButton(
                    '1',
                    getKeyNum1(locale).$1,
                    getKeyNum1(locale).$2,
                  ),
                  KeyButton(
                    '2',
                    getKeyNum2(locale).$1,
                    getKeyNum2(locale).$2,
                  ),
                  KeyButton(
                    '3',
                    getKeyNum3(locale).$1,
                    getKeyNum3(locale).$2,
                  ),
                  const KeyButton('4', '\$', null),
                  const KeyButton('5', '%', null),
                  KeyButton(
                    '6',
                    getKeyNum6(locale).$1,
                    getKeyNum6(locale).$2,
                  ),
                  KeyButton(
                    '7',
                    getKeyNum7(locale).$1,
                    getKeyNum7(locale).$2,
                  ),
                  KeyButton(
                    '8',
                    getKeyNum8(locale).$1,
                    getKeyNum8(locale).$2,
                  ),
                  KeyButton(
                    '9',
                    getKeyNum9(locale).$1,
                    getKeyNum9(locale).$2,
                  ),
                  KeyButton(
                    '0',
                    getKeyNum0(locale).$1,
                    getKeyNum0(locale).$2,
                  ),
                  KeyButton(
                    getKeyAfterNums1(locale).$1,
                    getKeyAfterNums1(locale).$2,
                    getKeyAfterNums1(locale).$3,
                  ),
                  KeyButton(
                    getKeyAfterNums2(locale).$1,
                    getKeyAfterNums2(locale).$2,
                    getKeyAfterNums2(locale).$3,
                  ),
                  const KeyButton(
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
                          KeyButton(
                            null,
                            null,
                            null,
                            icon: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Transform.flip(
                                  flipX: true,
                                  child: const Icon(
                                    Icons.keyboard_tab,
                                    size: 15,
                                  ),
                                ),
                                const Icon(Icons.keyboard_tab, size: 15),
                              ],
                            ),
                            width: keySize * 1.5,
                          ),
                          KeyButton(
                            'Q',
                            null,
                            getKeyQ(locale),
                            firstLevelCentered: true,
                          ),
                          const KeyButton('W', null, null),
                          KeyButton(
                            'E',
                            null,
                            getKeyE(locale),
                            firstLevelCentered: true,
                          ),
                          const KeyButton('R', null, null),
                          const KeyButton('T', null, null),
                          const KeyButton('Y', null, null),
                          const KeyButton('U', null, null),
                          const KeyButton('I', null, null),
                          const KeyButton('O', null, null),
                          const KeyButton('P', null, null),
                          KeyButton(
                            getKeyAfter1Letters1(locale).$1,
                            getKeyAfter1Letters1(locale).$2,
                            getKeyAfter1Letters1(locale).$3,
                          ),
                          KeyButton(
                            getKeyAfter1Letters2(locale).$1,
                            getKeyAfter1Letters2(locale).$2,
                            getKeyAfter1Letters2(locale).$3,
                          ),
                          if (isAnsi)
                            KeyButton(
                              getKeyAfter1Letters3(locale).$1,
                              getKeyAfter1Letters3(locale).$2,
                              getKeyAfter1Letters3(locale).$3,
                              width: keySize * 1.5,
                            ),
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
                          KeyButton(
                            getKeyAfter2Letters1(locale).$1,
                            getKeyAfter2Letters1(locale).$2,
                            getKeyAfter2Letters1(locale).$3,
                          ),
                          KeyButton(
                            getKeyAfter2Letters2(locale).$1,
                            getKeyAfter2Letters2(locale).$2,
                            getKeyAfter2Letters2(locale).$3,
                          ),
                          if (!isAnsi)
                            KeyButton(
                              getKeyAfter1Letters3(locale).$1,
                              getKeyAfter1Letters3(locale).$2,
                              getKeyAfter1Letters3(locale).$3,
                            ),
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
                  if (!isAnsi) const IsoEnterButton(),
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
                    width: keySize * (langCode == 'en' ? 2.48 : 1.3),
                  ),
                  if (langCode != 'en') const KeyButton('<', '>', null),
                  const KeyButton('Z', null, null),
                  const KeyButton('X', null, null),
                  const KeyButton('C', null, null),
                  const KeyButton('V', null, null),
                  const KeyButton('B', null, null),
                  const KeyButton('N', null, null),
                  const KeyButton('M', null, null),
                  KeyButton(
                    getKeyAfter3Letters1(locale).$1,
                    getKeyAfter3Letters1(locale).$2,
                    null,
                  ),
                  KeyButton(
                    getKeyAfter3Letters2(locale).$1,
                    getKeyAfter3Letters2(locale).$2,
                    null,
                  ),
                  KeyButton(
                    getKeyAfter3Letters3(locale).$1,
                    getKeyAfter3Letters3(locale).$2,
                    null,
                  ),
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
