import 'package:flutter/material.dart';
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
    return const Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
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
              icon: Icon(Icons.backspace, size: 15),
              width: keySize * 2,
            ),
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
              icon: Icon(Icons.keyboard_tab, size: 15),
              width: keySize * 1.5,
            ),
            KeyButton('Q', null, null),
            KeyButton('W', null, null),
            KeyButton('E', null, null),
            KeyButton('R', null, null),
            KeyButton('T', null, null),
            KeyButton('Y', null, null),
            KeyButton('U', null, null),
            KeyButton('I', null, null),
            KeyButton('O', null, null),
            KeyButton('P', null, null),
            KeyButton('\u00b4', '¨', null),
            KeyButton('*', '+', '~'),
            KeyButton('}', ']', '`', width: keySize * 1.5),
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
              icon: Icon(Icons.upload, size: 15),
              width: keySize * 1.9,
            ),
            KeyButton('A', null, null),
            KeyButton('S', null, null),
            KeyButton('D', null, null),
            KeyButton('F', null, null),
            KeyButton('G', null, null),
            KeyButton('H', null, null),
            KeyButton('J', null, null),
            KeyButton('K', null, null),
            KeyButton('L', null, null),
            KeyButton('Ñ', null, null),
            KeyButton('{', '[', '^'),
            KeyButton(
              null,
              null,
              null,
              icon: Icon(Icons.subdirectory_arrow_left),
              width: keySize * 2.3,
            ),
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
              icon: Icon(Icons.arrow_upward, size: 15),
              width: keySize * 1.3,
            ),
            KeyButton('<', '>', null),
            KeyButton('Z', null, null),
            KeyButton('X', null, null),
            KeyButton('C', null, null),
            KeyButton('V', null, null),
            KeyButton('B', null, null),
            KeyButton('N', null, null),
            KeyButton('M', null, null),
            KeyButton(',', ';', null),
            KeyButton('.', ':', null),
            KeyButton('-', '_', null),
            KeyButton(
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
            KeyButton('Ctrl', null, null, width: keySize * 1.5),
            KeyButton(
              'Win',
              null,
              null,
              // icon: Icon(Icons.keyboard_tab),
              width: keySize * 1.5,
            ),
            KeyButton('Alt', null, null, width: keySize * 1.5),
            SpaceButton(width: keySize * 5.55),
            KeyButton('Alt', null, null, width: keySize * 1.5),
            KeyButton(
              'Win',
              null,
              null,
              // icon: Icon(Icons.keyboard_tab),
              width: keySize * 1.5,
            ),
            KeyButton(
              'Menú',
              null,
              null,
              // icon: Icon(Icons.keyboard_tab),
              width: keySize * 1.5,
            ),
            KeyButton('Ctrl', null, null, width: keySize * 1.5),
          ],
        ),
      ],
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
    return const Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            KeyButton(
              'Ins',
              null,
              null,
              firstLevelNoBold: true,
            ),
            KeyButton(
              'Inicio',
              null,
              null,
              firstLevelNoBold: true,
            ),
            KeyButton(
              'Re Pág',
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
              'Supr',
              null,
              null,
              firstLevelNoBold: true,
            ),
            KeyButton(
              'Fin',
              null,
              null,
              firstLevelNoBold: true,
            ),
            KeyButton(
              'Av Pág',
              null,
              null,
              firstLevelNoBold: true,
            ),
          ],
        ),
        SizedBox(height: keySize + 7),
        KeyButton(
          null,
          null,
          null,
          icon: Icon(Icons.keyboard_arrow_up),
        ),
        Row(
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
  }
}

class NumpadSection extends StatelessWidget {
  const NumpadSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: keySize + 7),
        Row(
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
                      'Inicio',
                      '7',
                      null,
                      firstLevelNoBold: true,
                    ),
                    KeyButton('↑', '8', null),
                    KeyButton(
                      'RePg',
                      '9',
                      null,
                      firstLevelNoBold: true,
                    ),
                  ],
                ),
                Row(
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
            KeyButton(
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
                      'Fin',
                      '1',
                      null,
                      firstLevelNoBold: true,
                    ),
                    KeyButton('↓', '2', null),
                    KeyButton(
                      'AvPg',
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
                      'Ins',
                      '0',
                      null,
                      firstLevelNoBold: true,
                      width: keySize * 2 + 7,
                    ),
                    KeyButton(
                      'Supr',
                      '.',
                      null,
                      firstLevelNoBold: true,
                    ),
                  ],
                ),
              ],
            ),
            KeyButton(
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
  }
}
