import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kb_checker/helpers/extensions.dart';
import 'package:kb_checker/providers/key_listener.dart';

const keySize = 45.0;
const radiusValue = 5.0;
const radius = Radius.circular(radiusValue);
const shape = RoundedRectangleBorder(borderRadius: BorderRadius.all(radius));

final colorWhenPressed = Colors.yellow.withOpacity(0.5);
final colorWhenPassed = Colors.green.withOpacity(0.5);

class KeyButton extends StatelessWidget {
  const KeyButton(
    this.firstLevel,
    this.secordLevel,
    this.thirdLevel, {
    super.key,
    this.width,
    this.height,
    this.icon,
    this.firstLevelNoBold = false,
    this.firstLevelCentered = false,
    this.physicalId,
    this.logicalId,
  });

  final Widget? icon;
  final String? firstLevel;
  final bool firstLevelNoBold;
  final bool firstLevelCentered;
  final String? secordLevel;
  final String? thirdLevel;
  final double? width;
  final double? height;
  final int? physicalId;
  final int? logicalId;

  @override
  Widget build(BuildContext context) {
    final keyListener = KeyListenerProvider();
    final id = switch (keyListener.mode) {
      KeyTesterMode.phisical => physicalId ?? -1,
      KeyTesterMode.logical => logicalId ?? -1,
    };

    final textStyle = TextStyle(
      fontWeight: firstLevelNoBold ? null : FontWeight.bold,
    );
    return ValueListenableBuilder(
      valueListenable: keyListener.keyNotifier,
      builder: (_, KeyEvent? event, ___) {
        Color? color = keyListener.isPassed(id) ? colorWhenPassed : null;
        if (event?.id == id) {
          if (event is KeyDownEvent) {
            color = colorWhenPressed;
          } else if (event is KeyUpEvent) {
            keyListener.addToPassedKeys(event);
            color = colorWhenPassed;
          }
        }
        return Card(
          color: color,
          shape: shape,
          child: Container(
            width: width ?? keySize,
            height: height ?? keySize,
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 3.0,
            ),
            child: icon ??
                (firstLevelCentered ||
                        (secordLevel == null && thirdLevel == null)
                    ? Stack(
                        alignment: Alignment.center,
                        children: [
                          Center(
                            child: Text(
                              firstLevel!,
                              style: textStyle.copyWith(
                                fontSize: firstLevel!.length == 1 ? null : 10.5,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: -2.0,
                            right: -2.0,
                            child: Text(thirdLevel ?? '', style: textStyle),
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                secordLevel ?? '',
                                style: textStyle.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                firstLevel!,
                                style: textStyle.copyWith(
                                  fontSize:
                                      firstLevel!.length == 1 ? null : 10.5,
                                ),
                              ),
                            ],
                          ),
                          Text(thirdLevel ?? '', style: textStyle),
                        ],
                      )),
          ),
        );
      },
    );
  }
}

class SpaceButton extends StatelessWidget {
  const SpaceButton({
    super.key,
    this.width,
  });

  final double? width;

  @override
  Widget build(BuildContext context) {
    final keyListener = KeyListenerProvider();
    final id = switch (keyListener.mode) {
      KeyTesterMode.phisical => 458796,
      KeyTesterMode.logical => 32,
    };

    return ValueListenableBuilder(
      valueListenable: keyListener.keyNotifier,
      builder: (_, KeyEvent? event, ___) {
        Color? color = keyListener.isPassed(id) ? colorWhenPassed : null;
        if (event?.id == id) {
          if (event is KeyDownEvent) {
            color = colorWhenPressed;
          } else if (event is KeyUpEvent) {
            keyListener.addToPassedKeys(event);
            color = colorWhenPassed;
          }
        }
        return Card(
          color: color,
          shape: shape,
          child: SizedBox(
            width: width ?? keySize,
            height: keySize,
          ),
        );
      },
    );
  }
}

class IsoEnterButton extends StatelessWidget {
  const IsoEnterButton({super.key});

  @override
  Widget build(BuildContext context) {
    final keyListener = KeyListenerProvider();
    final id = switch (keyListener.mode) {
      KeyTesterMode.phisical => 458792,
      KeyTesterMode.logical => 4294967309,
    };

    const padding = 4.0;
    return ValueListenableBuilder(
      valueListenable: keyListener.keyNotifier,
      builder: (_, KeyEvent? event, ___) {
        Color? color = keyListener.isPassed(id) ? colorWhenPassed : null;
        if (event?.id == id) {
          if (event is KeyDownEvent) {
            color = colorWhenPressed;
          } else if (event is KeyUpEvent) {
            keyListener.addToPassedKeys(event);
            color = colorWhenPassed;
          }
        }
        return Padding(
          padding: const EdgeInsets.only(left: padding),
          child: Card(
            color: color,
            shape: const IsoEnterButtonShape(padding),
            child: const SizedBox(
              width: keySize,
              height: keySize * 2 + 7,
              child: Icon(Icons.subdirectory_arrow_left),
            ),
          ),
        );
      },
    );
  }
}

class IsoEnterButtonShape extends ShapeBorder {
  const IsoEnterButtonShape(this.appliedPadding);

  final double appliedPadding;

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) =>
      getOuterPath(rect);

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final path = Path();
    path.moveTo(rect.left, rect.top);
    path.lineTo(rect.right - radiusValue, rect.top);
    path.arcToPoint(
      Offset(rect.right, rect.top + radiusValue),
      radius: radius,
    );
    path.lineTo(rect.right, rect.bottom - radiusValue);
    path.arcToPoint(
      Offset(rect.right - radiusValue, rect.bottom),
      radius: radius,
    );
    path.lineTo(-appliedPadding + rect.left + radiusValue, rect.bottom);
    path.arcToPoint(
      Offset(-appliedPadding + rect.left, rect.bottom - radiusValue),
      radius: radius,
    );
    path.lineTo(
      -appliedPadding + rect.left,
      -appliedPadding / 2 + rect.top + rect.height / 2 + radiusValue,
    );
    path.arcToPoint(
      Offset(
        -appliedPadding + rect.left - radiusValue,
        -appliedPadding + rect.top + rect.height / 2,
      ),
      radius: radius,
      clockwise: false,
    );
    path.lineTo(
      -appliedPadding / 2 + rect.left - rect.width / 2 + radiusValue,
      -appliedPadding + rect.top + rect.height / 2,
    );
    path.arcToPoint(
      Offset(
        rect.left - rect.width / 2,
        -appliedPadding + rect.top + rect.height / 2 - radiusValue,
      ),
      radius: radius,
    );
    path.lineTo(rect.left - rect.width / 2, rect.top + radiusValue);
    path.arcToPoint(
      Offset(rect.left - rect.width / 2 + radiusValue, rect.top),
      radius: radius,
    );
    path.close();
    return path;
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) => this;
}
