import 'dart:io';

import 'package:flutter/material.dart';

Widget get metaKey {
  if (Platform.isWindows) {
    return const Icon(
      Icons.window,
      size: 20.0,
    );
  }
  return const Center(
    child: Text(
      'Meta',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 12.0,
      ),
    ),
  );
}
