import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

enum KeyTesterMode {
  phisical,
  logical,
}

class KeyListenerProvider {
  static final KeyListenerProvider _instance = KeyListenerProvider._();
  KeyListenerProvider._();
  factory KeyListenerProvider() => _instance;

  late ValueNotifier<KeyEvent?> keyNotifier;
  late KeyTesterMode mode;
  late Set<int> physicalPassedKeys;
  late Set<int> logicalPassedKeys;

  void init() {
    keyNotifier = ValueNotifier<KeyEvent?>(null);
    mode = KeyTesterMode.phisical;
    physicalPassedKeys = <int>{};
    logicalPassedKeys = <int>{};
  }

  void addToPassedKeys(KeyUpEvent event) {
    physicalPassedKeys.add(event.physicalKey.usbHidUsage);
    logicalPassedKeys.add(event.logicalKey.keyId);
  }

  bool isPassed(int id) => switch (mode) {
        KeyTesterMode.phisical => physicalPassedKeys.contains(id),
        KeyTesterMode.logical => logicalPassedKeys.contains(id),
      };

  void clear() {
    physicalPassedKeys.clear();
    logicalPassedKeys.clear();
  }
}
