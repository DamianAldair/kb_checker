import 'package:flutter/material.dart';
import 'package:kb_checker/widgets/sections.dart';

class KeyboardPage extends StatelessWidget {
  const KeyboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FunctionSection(),
              SizedBox.square(dimension: 20.0),
              AlphanumericSection(),
            ],
          ),
          SizedBox.square(dimension: 20.0),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SystemSection(),
              SizedBox.square(dimension: 20.0),
              CursorSection(),
            ],
          ),
          SizedBox.square(dimension: 20.0),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox.square(dimension: 20.0),
              NumpadSection(),
            ],
          ),
        ],
      ),
    );
  }
}
