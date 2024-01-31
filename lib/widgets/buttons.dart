import 'package:flutter/material.dart';

const keySize = 45.0;
const textStyle = TextStyle(fontWeight: FontWeight.bold);

class KeyButton extends StatelessWidget {
  const KeyButton(
    this.firstLevel,
    this.secordLevel,
    this.thirdLevel, {
    super.key,
    this.width,
    this.icon,
  });

  final Widget? icon;
  final String? firstLevel;
  final String? secordLevel;
  final String? thirdLevel;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: width ?? keySize,
        height: keySize,
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 3.0,
        ),
        child: icon ??
            (secordLevel == null && thirdLevel == null
                ? Center(child: Text(firstLevel!, style: textStyle))
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(secordLevel ?? '', style: textStyle),
                          Text(firstLevel!, style: textStyle),
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
      child: SizedBox(
        width: width ?? keySize,
        height: keySize,
      ),
    );
  }
}
