import 'package:flutter/widgets.dart';

class KeyListenerProvider {
  static final KeyListenerProvider _instance = KeyListenerProvider._();
  KeyListenerProvider._();
  factory KeyListenerProvider() => _instance;

  late ValueNotifier<KeyEvent?> keyNotifier;

  void init() {
    keyNotifier = ValueNotifier<KeyEvent?>(null);
  }
}
