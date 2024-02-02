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
        KeyButton(
          'Esc',
          null,
          null,
          physicalId: 458793,
          logicalId: 4294967323,
        ),
        SizedBox(width: keySize + 7),
        KeyButton(
          'F1',
          null,
          null,
          physicalId: 458810,
          logicalId: 4294969345,
        ),
        KeyButton(
          'F2',
          null,
          null,
          physicalId: 458811,
          logicalId: 4294969346,
        ),
        KeyButton(
          'F3',
          null,
          null,
          physicalId: 458812,
          logicalId: 4294969347,
        ),
        KeyButton(
          'F4',
          null,
          null,
          physicalId: 458813,
          logicalId: 4294969348,
        ),
        SizedBox(width: keySize / 2),
        KeyButton(
          'F5',
          null,
          null,
          physicalId: 458814,
          logicalId: 4294969349,
        ),
        KeyButton(
          'F6',
          null,
          null,
          physicalId: 458815,
          logicalId: 4294969350,
        ),
        KeyButton(
          'F7',
          null,
          null,
          physicalId: 458816,
          logicalId: 4294969351,
        ),
        KeyButton(
          'F8',
          null,
          null,
          physicalId: 458817,
          logicalId: 4294969352,
        ),
        SizedBox(width: keySize / 2),
        KeyButton(
          'F9',
          null,
          null,
          physicalId: 458818,
          logicalId: 4294969353,
        ),
        KeyButton(
          'F10',
          null,
          null,
          physicalId: 458819,
          logicalId: 4294969354,
        ),
        KeyButton(
          'F11',
          null,
          null,
          physicalId: 458820,
          logicalId: 4294969355,
        ),
        KeyButton(
          'F12',
          null,
          null,
          physicalId: 458821,
          logicalId: 4294969356,
        ),
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
                    physicalId: 458805,
                    logicalId: 92,
                  ),
                  KeyButton(
                    '1',
                    getKeyNum1(locale).$1,
                    getKeyNum1(locale).$2,
                    physicalId: 458782,
                    logicalId: 49,
                  ),
                  KeyButton(
                    '2',
                    getKeyNum2(locale).$1,
                    getKeyNum2(locale).$2,
                    physicalId: 458783,
                    logicalId: 50,
                  ),
                  KeyButton(
                    '3',
                    getKeyNum3(locale).$1,
                    getKeyNum3(locale).$2,
                    physicalId: 458784,
                    logicalId: 51,
                  ),
                  const KeyButton(
                    '4',
                    '\$',
                    null,
                    physicalId: 458785,
                    logicalId: 52,
                  ),
                  const KeyButton(
                    '5',
                    '%',
                    null,
                    physicalId: 458786,
                    logicalId: 53,
                  ),
                  KeyButton(
                    '6',
                    getKeyNum6(locale).$1,
                    getKeyNum6(locale).$2,
                    physicalId: 458787,
                    logicalId: 54,
                  ),
                  KeyButton(
                    '7',
                    getKeyNum7(locale).$1,
                    getKeyNum7(locale).$2,
                    physicalId: 458788,
                    logicalId: 55,
                  ),
                  KeyButton(
                    '8',
                    getKeyNum8(locale).$1,
                    getKeyNum8(locale).$2,
                    physicalId: 458789,
                    logicalId: 56,
                  ),
                  KeyButton(
                    '9',
                    getKeyNum9(locale).$1,
                    getKeyNum9(locale).$2,
                    physicalId: 458790,
                    logicalId: 57,
                  ),
                  KeyButton(
                    '0',
                    getKeyNum0(locale).$1,
                    getKeyNum0(locale).$2,
                    physicalId: 458791,
                    logicalId: 48,
                  ),
                  KeyButton(
                    getKeyAfterNums1(locale).$1,
                    getKeyAfterNums1(locale).$2,
                    getKeyAfterNums1(locale).$3,
                    physicalId: 458797,
                    logicalId: 91,
                  ),
                  KeyButton(
                    getKeyAfterNums2(locale).$1,
                    getKeyAfterNums2(locale).$2,
                    getKeyAfterNums2(locale).$3,
                    physicalId: 458798,
                    logicalId: 93,
                  ),
                  const KeyButton(
                    null,
                    null,
                    null,
                    icon: Icon(Icons.backspace_outlined, size: 15),
                    width: keySize * 2,
                    physicalId: 458794,
                    logicalId: 4294967304,
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
                            physicalId: 458795,
                            logicalId: 4294967305,
                          ),
                          KeyButton(
                            'Q',
                            null,
                            getKeyQ(locale),
                            firstLevelCentered: true,
                            physicalId: 458772,
                            logicalId: 113,
                          ),
                          const KeyButton(
                            'W',
                            null,
                            null,
                            physicalId: 458778,
                            logicalId: 119,
                          ),
                          KeyButton(
                            'E',
                            null,
                            getKeyE(locale),
                            firstLevelCentered: true,
                            physicalId: 458760,
                            logicalId: 101,
                          ),
                          const KeyButton(
                            'R',
                            null,
                            null,
                            physicalId: 458773,
                            logicalId: 114,
                          ),
                          const KeyButton(
                            'T',
                            null,
                            null,
                            physicalId: 458775,
                            logicalId: 116,
                          ),
                          const KeyButton(
                            'Y',
                            null,
                            null,
                            physicalId: 458780,
                            logicalId: 121,
                          ),
                          const KeyButton(
                            'U',
                            null,
                            null,
                            physicalId: 458776,
                            logicalId: 117,
                          ),
                          const KeyButton(
                            'I',
                            null,
                            null,
                            physicalId: 458764,
                            logicalId: 105,
                          ),
                          const KeyButton(
                            'O',
                            null,
                            null,
                            physicalId: 458770,
                            logicalId: 111,
                          ),
                          const KeyButton(
                            'P',
                            null,
                            null,
                            physicalId: 458771,
                            logicalId: 112,
                          ),
                          KeyButton(
                            getKeyAfter1Letters1(locale).$1,
                            getKeyAfter1Letters1(locale).$2,
                            getKeyAfter1Letters1(locale).$3,
                            physicalId: 458799,
                            logicalId: 59,
                          ),
                          KeyButton(
                            getKeyAfter1Letters2(locale).$1,
                            getKeyAfter1Letters2(locale).$2,
                            getKeyAfter1Letters2(locale).$3,
                            physicalId: 458800,
                            logicalId: 61,
                          ),
                          if (isAnsi)
                            KeyButton(
                              getKeyAfter1Letters3(locale).$1,
                              getKeyAfter1Letters3(locale).$2,
                              getKeyAfter1Letters3(locale).$3,
                              width: keySize * 1.5,
                              physicalId: 458801,
                              logicalId: 47,
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
                            physicalId: 458809,
                            logicalId: 4294967556,
                          ),
                          const KeyButton(
                            'A',
                            null,
                            null,
                            physicalId: 458756,
                            logicalId: 97,
                          ),
                          const KeyButton(
                            'S',
                            null,
                            null,
                            physicalId: 458774,
                            logicalId: 115,
                          ),
                          const KeyButton(
                            'D',
                            null,
                            null,
                            physicalId: 458759,
                            logicalId: 100,
                          ),
                          const KeyButton(
                            'F',
                            null,
                            null,
                            physicalId: 458761,
                            logicalId: 102,
                          ),
                          const KeyButton(
                            'G',
                            null,
                            null,
                            physicalId: 458762,
                            logicalId: 103,
                          ),
                          const KeyButton(
                            'H',
                            null,
                            null,
                            physicalId: 458763,
                            logicalId: 104,
                          ),
                          const KeyButton(
                            'J',
                            null,
                            null,
                            physicalId: 458765,
                            logicalId: 106,
                          ),
                          const KeyButton(
                            'K',
                            null,
                            null,
                            physicalId: 458766,
                            logicalId: 107,
                          ),
                          const KeyButton(
                            'L',
                            null,
                            null,
                            physicalId: 458767,
                            logicalId: 108,
                          ),
                          KeyButton(
                            getKeyAfter2Letters1(locale).$1,
                            getKeyAfter2Letters1(locale).$2,
                            getKeyAfter2Letters1(locale).$3,
                            physicalId: 458803,
                            logicalId: 96,
                          ),
                          KeyButton(
                            getKeyAfter2Letters2(locale).$1,
                            getKeyAfter2Letters2(locale).$2,
                            getKeyAfter2Letters2(locale).$3,
                            physicalId: 458804,
                            logicalId: 34,
                          ),
                          if (!isAnsi)
                            KeyButton(
                              getKeyAfter1Letters3(locale).$1,
                              getKeyAfter1Letters3(locale).$2,
                              getKeyAfter1Letters3(locale).$3,
                              physicalId: 458801,
                              logicalId: 47,
                            ),
                          if (isAnsi)
                            const KeyButton(
                              null,
                              null,
                              null,
                              icon: Icon(Icons.subdirectory_arrow_left),
                              width: keySize * 2.3,
                              physicalId: 458792,
                              logicalId: 4294967309,
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
                    physicalId: 458977,
                    logicalId: 8589934850,
                  ),
                  if (langCode != 'en')
                    const KeyButton(
                      '<',
                      '>',
                      null,
                      physicalId: 458852,
                      logicalId: 226,
                    ),
                  const KeyButton(
                    'Z',
                    null,
                    null,
                    physicalId: 458781,
                    logicalId: 122,
                  ),
                  const KeyButton(
                    'X',
                    null,
                    null,
                    physicalId: 458779,
                    logicalId: 120,
                  ),
                  const KeyButton(
                    'C',
                    null,
                    null,
                    physicalId: 458758,
                    logicalId: 99,
                  ),
                  const KeyButton(
                    'V',
                    null,
                    null,
                    physicalId: 458777,
                    logicalId: 118,
                  ),
                  const KeyButton(
                    'B',
                    null,
                    null,
                    physicalId: 458757,
                    logicalId: 98,
                  ),
                  const KeyButton(
                    'N',
                    null,
                    null,
                    physicalId: 458769,
                    logicalId: 110,
                  ),
                  const KeyButton(
                    'M',
                    null,
                    null,
                    physicalId: 458768,
                    logicalId: 109,
                  ),
                  KeyButton(
                    getKeyAfter3Letters1(locale).$1,
                    getKeyAfter3Letters1(locale).$2,
                    null,
                    physicalId: 458806,
                    logicalId: 44,
                  ),
                  KeyButton(
                    getKeyAfter3Letters2(locale).$1,
                    getKeyAfter3Letters2(locale).$2,
                    null,
                    physicalId: 458807,
                    logicalId: 46,
                  ),
                  KeyButton(
                    getKeyAfter3Letters3(locale).$1,
                    getKeyAfter3Letters3(locale).$2,
                    null,
                    physicalId: 458808,
                    logicalId: 45,
                  ),
                  const KeyButton(
                    null,
                    null,
                    null,
                    icon: Icon(Icons.arrow_upward, size: 15),
                    width: keySize * 2.9,
                    physicalId: 458981,
                    logicalId: 8589934851,
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const KeyButton(
                    'Ctrl',
                    null,
                    null,
                    width: keySize * 1.5,
                    physicalId: 458976,
                    logicalId: 8589934848,
                  ),
                  KeyButton(
                    null,
                    null,
                    null,
                    icon: metaKey,
                    width: keySize * 1.5,
                    physicalId: 458979,
                    logicalId: 8589934854,
                  ),
                  const KeyButton(
                    'Alt',
                    null,
                    null,
                    width: keySize * 1.5,
                    physicalId: 458978,
                    logicalId: 8589934852,
                  ),
                  const SpaceButton(width: keySize * 5.55),
                  KeyButton(
                    getKeyLeftAlt(locale),
                    null,
                    null,
                    width: keySize * 1.5,
                    physicalId: 458982,
                    logicalId: 8589934853,
                  ),
                  KeyButton(
                    null,
                    null,
                    null,
                    icon: metaKey,
                    width: keySize * 1.5,
                    physicalId: 458983,
                    logicalId: 8589934855,
                  ),
                  const KeyButton(
                    null,
                    null,
                    null,
                    icon: Icon(Icons.list_alt, size: 20),
                    width: keySize * 1.5,
                    physicalId: 458853,
                    logicalId: 4294968581,
                  ),
                  const KeyButton(
                    'Ctrl',
                    null,
                    null,
                    width: keySize * 1.5,
                    physicalId: 458980,
                    logicalId: 8589934849,
                  ),
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
          physicalId: 458822,
          logicalId: -1,
        ),
        KeyButton(
          null,
          null,
          null,
          icon: Icon(Icons.unfold_more, size: 15),
          physicalId: 458823,
          logicalId: 4294967564,
        ),
        KeyButton(
          null,
          null,
          null,
          icon: Icon(Icons.pause, size: 15),
          physicalId: 458824,
          logicalId: 4294968585,
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
                  physicalId: 458825,
                  logicalId: 4294968327,
                ),
                KeyButton(
                  getKeyHome(langCode),
                  null,
                  null,
                  firstLevelNoBold: true,
                  physicalId: 458826,
                  logicalId: 4294968070,
                ),
                KeyButton(
                  getKeyPgUp(langCode),
                  null,
                  null,
                  firstLevelNoBold: true,
                  physicalId: 458827,
                  logicalId: 4294968072,
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
                  physicalId: 458828,
                  logicalId: 4294967423,
                ),
                KeyButton(
                  getKeyEnd(langCode),
                  null,
                  null,
                  firstLevelNoBold: true,
                  physicalId: 458829,
                  logicalId: 4294968069,
                ),
                KeyButton(
                  getKeyPgDn(langCode),
                  null,
                  null,
                  firstLevelNoBold: true,
                  physicalId: 458830,
                  logicalId: 4294968071,
                ),
              ],
            ),
            const SizedBox(height: keySize + 7),
            const KeyButton(
              null,
              null,
              null,
              icon: Icon(Icons.keyboard_arrow_up),
              physicalId: 458834,
              logicalId: 4294968068,
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
                  physicalId: 458832,
                  logicalId: 4294968066,
                ),
                KeyButton(
                  null,
                  null,
                  null,
                  icon: Icon(Icons.keyboard_arrow_down),
                  physicalId: 458833,
                  logicalId: 4294968065,
                ),
                KeyButton(
                  null,
                  null,
                  null,
                  icon: Icon(Icons.keyboard_arrow_right),
                  physicalId: 458831,
                  logicalId: 4294968067,
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
                  physicalId: 458835,
                  logicalId: 4294967562,
                ),
                KeyButton(
                  '/',
                  null,
                  null,
                  physicalId: 458836,
                  logicalId: 8589935151,
                ),
                KeyButton(
                  '*',
                  null,
                  null,
                  physicalId: 458837,
                  logicalId: 8589935146,
                ),
                KeyButton(
                  '-',
                  null,
                  null,
                  physicalId: 458838,
                  logicalId: 8589935149,
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
                          getKeyHome(langCode),
                          '7',
                          null,
                          firstLevelNoBold: true,
                          physicalId: 458847,
                          logicalId: 8589935159,
                        ),
                        const KeyButton(
                          '↑',
                          '8',
                          null,
                          physicalId: 458848,
                          logicalId: 8589935160,
                        ),
                        KeyButton(
                          getKeyPgUp(langCode),
                          '9',
                          null,
                          firstLevelNoBold: true,
                          physicalId: 458849,
                          logicalId: 8589935161,
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        KeyButton(
                          '←',
                          '4',
                          null,
                          physicalId: 458844,
                          logicalId: 8589935156,
                        ),
                        KeyButton(
                          '',
                          '5',
                          null,
                          physicalId: 458845,
                          logicalId: 8589935157,
                        ),
                        KeyButton(
                          '→',
                          '6',
                          null,
                          physicalId: 458846,
                          logicalId: 8589935158,
                        ),
                      ],
                    ),
                  ],
                ),
                const KeyButton(
                  '+',
                  null,
                  null,
                  height: keySize * 2 + 7,
                  physicalId: 458839,
                  logicalId: 8589935147,
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
                          physicalId: 458841,
                          logicalId: 8589935153,
                        ),
                        const KeyButton(
                          '↓',
                          '2',
                          null,
                          physicalId: 458842,
                          logicalId: 8589935154,
                        ),
                        KeyButton(
                          getKeyPgDn(langCode),
                          '3',
                          null,
                          firstLevelNoBold: true,
                          physicalId: 458843,
                          logicalId: 8589935155,
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
                          physicalId: 458850,
                          logicalId: 8589935152,
                        ),
                        KeyButton(
                          getKeyDelete(langCode),
                          '.',
                          null,
                          firstLevelNoBold: true,
                          physicalId: 458851,
                          logicalId: 8589935150,
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
                  physicalId: 458840,
                  logicalId: 4294967309,
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
