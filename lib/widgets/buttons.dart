import 'package:flutter/material.dart';

const keySize = 45.0;
const radiusValue = 5.0;
const radius = Radius.circular(radiusValue);
const shape = RoundedRectangleBorder(borderRadius: BorderRadius.all(radius));

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
  });

  final Widget? icon;
  final String? firstLevel;
  final bool firstLevelNoBold;
  final bool firstLevelCentered;
  final String? secordLevel;
  final String? thirdLevel;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontWeight: firstLevelNoBold ? null : FontWeight.bold,
    );
    return Card(
      shape: shape,
      child: Container(
        width: width ?? keySize,
        height: height ?? keySize,
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 3.0,
        ),
        child: icon ??
            (firstLevelCentered || (secordLevel == null && thirdLevel == null)
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
                              fontSize: firstLevel!.length == 1 ? null : 10.5,
                            ),
                          ),
                        ],
                      ),
                      Text(thirdLevel ?? '', style: textStyle),
                    ],
                  )),
      ),
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
    return Card(
      shape: shape,
      child: SizedBox(
        width: width ?? keySize,
        height: keySize,
      ),
    );
  }
}

class IsoEnterButton extends StatelessWidget {
  const IsoEnterButton({super.key});

  @override
  Widget build(BuildContext context) {
    const padding = 4.0;
    return const Padding(
      padding: EdgeInsets.only(left: padding),
      child: Card(
        shape: IsoEnterButtonShape(padding),
        child: SizedBox(
          width: keySize,
          height: keySize * 2 + 7,
          child: Icon(Icons.subdirectory_arrow_left),
        ),
      ),
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
