import 'package:flutter/material.dart';

const keySize = 45.0;
final shape = RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0));

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
  });

  final Widget? icon;
  final String? firstLevel;
  final bool firstLevelNoBold;
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
            (secordLevel == null && thirdLevel == null
                ? Center(
                    child: Text(
                      firstLevel!,
                      style: textStyle.copyWith(
                        fontSize: firstLevel!.length == 1 ? null : 10.5,
                      ),
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(secordLevel ?? '', style: textStyle),
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
    return Card(
      shape: IsoEnterButtonShape(),
      child: const SizedBox(
        width: keySize,
        height: keySize * 2 + 7,
      ),
    );
  }
}

class IsoEnterButtonShape extends ShapeBorder {
  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) =>
      getOuterPath(rect);

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final path = Path();
    path.moveTo(rect.right, rect.top);
    path.lineTo(rect.right, rect.bottom);
    path.lineTo(rect.left, rect.bottom);
    path.lineTo(rect.left, rect.top + rect.height / 2);
    path.lineTo(rect.left - rect.width / 2, rect.top + rect.height / 2);
    path.lineTo(rect.left - rect.width / 2, rect.top);
    path.close();
    return path;
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) => this;
}
