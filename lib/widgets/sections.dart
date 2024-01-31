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
              icon: Icon(Icons.backspace),
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
              icon: Icon(Icons.keyboard_tab),
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
              icon: Icon(Icons.arrow_upward),
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
              icon: Icon(Icons.arrow_upward),
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
              icon: Icon(Icons.arrow_upward),
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
    return const Placeholder();
  }
}

class CursorSection extends StatelessWidget {
  const CursorSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class NumpadSection extends StatelessWidget {
  const NumpadSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
