import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension PhysicalKeyboardKeyX on PhysicalKeyboardKey {
  String getInfo(BuildContext context) {
    final infoLabel = AppLocalizations.of(context).physicalKeyboardKey;
    final idLabel =
        '${AppLocalizations.of(context).id}: $usbHidUsage (0x${usbHidUsage.toRadixString(16).padLeft(8, '0')})';
    final debugNameLabel = debugName == null
        ? null
        : '${AppLocalizations.of(context).debugName}: ${debugName!}';

    String label = '$infoLabel: [';
    label += idLabel;
    if (debugNameLabel != null) label += ', $debugNameLabel';
    label += ']';

    return label;
  }
}

extension LogicalKeyboardKeyX on LogicalKeyboardKey {
  String getInfo(BuildContext context) {
    final infoLabel = AppLocalizations.of(context).logicalKeyboardKey;
    final idLabel =
        '${AppLocalizations.of(context).id}: $keyId (0x${keyId.toRadixString(16).padLeft(8, '0')})';
    final debugNameLabel = debugName == null
        ? null
        : '${AppLocalizations.of(context).debugName}: ${debugName!}';
    final kkeyLabel = '${AppLocalizations.of(context).keyLabel}: "$keyLabel"';

    String label = '$infoLabel: [';
    label += idLabel;
    if (debugNameLabel != null) label += ', $debugNameLabel';
    label += ', $kkeyLabel';
    label += ']';

    return label;
  }
}
