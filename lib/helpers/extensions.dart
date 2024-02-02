import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kb_checker/providers/key_listener.dart';

extension KeyEventX on KeyEvent {
  int get id => switch (KeyListenerProvider().mode) {
        KeyTesterMode.phisical => physicalKey.usbHidUsage,
        KeyTesterMode.logical => logicalKey.keyId,
      };

  bool isPassed() {
    final keyListener = KeyListenerProvider();
    return keyListener.physicalPassedKeys.contains(id) ||
        keyListener.logicalPassedKeys.contains(id);
  }
}

extension PhysicalKeyboardKeyX on PhysicalKeyboardKey {
  String getInfo(BuildContext context) {
    final idLabel =
        '${AppLocalizations.of(context).id}: $usbHidUsage (0x${usbHidUsage.toRadixString(16).padLeft(8, '0')})';
    final debugNameLabel = debugName == null
        ? null
        : '${AppLocalizations.of(context).debugName}: ${debugName!}';

    String label = idLabel;
    if (debugNameLabel != null) label += ', $debugNameLabel';

    return label;
  }
}

extension LogicalKeyboardKeyX on LogicalKeyboardKey {
  String getInfo(BuildContext context) {
    final idLabel =
        '${AppLocalizations.of(context).id}: $keyId (0x${keyId.toRadixString(16).padLeft(8, '0')})';
    final debugNameLabel = debugName == null
        ? null
        : '${AppLocalizations.of(context).debugName}: ${debugName!}';
    final kkeyLabel = '${AppLocalizations.of(context).keyLabel}: "$keyLabel"';

    String label = idLabel;
    if (debugNameLabel != null) label += ', $debugNameLabel';
    label += ', $kkeyLabel';

    return label;
  }
}
