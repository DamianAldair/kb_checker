import 'package:flutter/widgets.dart';

enum KeyTesterMode {
  phiscal,
  logical,
}

class KeyListenerProvider {
  static final KeyListenerProvider _instance = KeyListenerProvider._();
  KeyListenerProvider._();
  factory KeyListenerProvider() => _instance;

  late ValueNotifier<KeyEvent?> keyNotifier;
  late KeyTesterMode mode;

  void init() {
    keyNotifier = ValueNotifier<KeyEvent?>(null);
    mode = KeyTesterMode.phiscal;
  }
}
