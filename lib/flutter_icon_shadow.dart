import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class IconShadow extends StatelessWidget {
  final Icon icon;
  final bool showShadow;
  final double shadowBlurSigma;
  final Color? shadowColor;

  const IconShadow(this.icon,
      {Key? key, this.showShadow = true, this.shadowColor, this.shadowBlurSigma = 0.9})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list = <Widget>[
      if (showShadow) ..._buildShadowWidgets(),
      IconTheme(
        data: const IconThemeData(opacity: 1.0),
        child: icon,
      ),
    ];

    return Stack(
      alignment: Alignment.center,
      children: list,
    );
  }

  List<Widget> _buildShadowWidgets() {
    const opacity = 0.2;
    const opacity2 = 0.06;
    const opacity3 = 0.01;
    const dimens = 1.0;
    const dimens2 = 2.0;
    const dimens3 = 3.0;
    final _shadowColor = shadowColor ?? icon.color;

    return [
      Positioned(
        bottom: dimens3,
        right: dimens3,
        child: IconTheme(
          data: const IconThemeData(
            opacity: opacity3,
          ),
          child: Icon(
            icon.icon,
            key: icon.key,
            color: _shadowColor,
            size: icon.size,
            semanticLabel: icon.semanticLabel,
            textDirection: icon.textDirection,
          ),
        ),
      ),
      Positioned(
        bottom: dimens3,
        left: dimens3,
        child: IconTheme(
          data: const IconThemeData(
            opacity: opacity3,
          ),
          child: Icon(
            icon.icon,
            key: icon.key,
            color: _shadowColor,
            size: icon.size,
            semanticLabel: icon.semanticLabel,
            textDirection: icon.textDirection,
          ),
        ),
      ),
      Positioned(
        top: dimens3,
        left: dimens3,
        child: IconTheme(
          data: const IconThemeData(
            opacity: opacity3,
          ),
          child: Icon(
            icon.icon,
            key: icon.key,
            color: _shadowColor,
            size: icon.size,
            semanticLabel: icon.semanticLabel,
            textDirection: icon.textDirection,
          ),
        ),
      ),
      Positioned(
        top: dimens3,
        right: dimens3,
        child: IconTheme(
          data: const IconThemeData(
            opacity: opacity3,
          ),
          child: Icon(
            icon.icon,
            key: icon.key,
            color: _shadowColor,
            size: icon.size,
            semanticLabel: icon.semanticLabel,
            textDirection: icon.textDirection,
          ),
        ),
      ),
      Positioned(
        bottom: dimens2,
        right: dimens2,
        child: IconTheme(
          data: const IconThemeData(
            opacity: opacity2,
          ),
          child: Icon(
            icon.icon,
            key: icon.key,
            color: _shadowColor,
            size: icon.size,
            semanticLabel: icon.semanticLabel,
            textDirection: icon.textDirection,
          ),
        ),
      ),
      Positioned(
        bottom: dimens2,
        left: dimens2,
        child: IconTheme(
          data: const IconThemeData(
            opacity: opacity2,
          ),
          child: Icon(
            icon.icon,
            key: icon.key,
            color: _shadowColor,
            size: icon.size,
            semanticLabel: icon.semanticLabel,
            textDirection: icon.textDirection,
          ),
        ),
      ),
      Positioned(
        top: dimens2,
        left: dimens2,
        child: IconTheme(
          data: const IconThemeData(
            opacity: opacity2,
          ),
          child: Icon(
            icon.icon,
            key: icon.key,
            color: _shadowColor,
            size: icon.size,
            semanticLabel: icon.semanticLabel,
            textDirection: icon.textDirection,
          ),
        ),
      ),
      Positioned(
        top: dimens2,
        right: dimens2,
        child: IconTheme(
          data: const IconThemeData(
            opacity: opacity2,
          ),
          child: Icon(
            icon.icon,
            key: icon.key,
            color: _shadowColor,
            size: icon.size,
            semanticLabel: icon.semanticLabel,
            textDirection: icon.textDirection,
          ),
        ),
      ),
      Positioned(
        bottom: dimens,
        right: dimens,
        child: IconTheme(
          data: const IconThemeData(
            opacity: opacity,
          ),
          child: Icon(
            icon.icon,
            key: icon.key,
            color: _shadowColor,
            size: icon.size,
            semanticLabel: icon.semanticLabel,
            textDirection: icon.textDirection,
          ),
        ),
      ),
      Positioned(
        bottom: dimens,
        left: dimens,
        child: IconTheme(
          data: const IconThemeData(
            opacity: opacity,
          ),
          child: Icon(
            icon.icon,
            key: icon.key,
            color: _shadowColor,
            size: icon.size,
            semanticLabel: icon.semanticLabel,
            textDirection: icon.textDirection,
          ),
        ),
      ),
      Positioned(
        top: dimens,
        left: dimens,
        child: IconTheme(
          data: const IconThemeData(
            opacity: opacity,
          ),
          child: Icon(
            icon.icon,
            key: icon.key,
            color: _shadowColor,
            size: icon.size,
            semanticLabel: icon.semanticLabel,
            textDirection: icon.textDirection,
          ),
        ),
      ),
      Positioned(
        top: dimens,
        right: dimens,
        child: IconTheme(
          data: const IconThemeData(
            opacity: opacity,
          ),
          child: Icon(
            icon.icon,
            key: icon.key,
            color: _shadowColor,
            size: icon.size,
            semanticLabel: icon.semanticLabel,
            textDirection: icon.textDirection,
          ),
        ),
      ),
      ClipRect(
        child: BackdropFilter(
          filter: ui.ImageFilter.blur(
            sigmaX: shadowBlurSigma,
            sigmaY: shadowBlurSigma,
          ),
          child: IconTheme(data: const IconThemeData(opacity: 1.0), child: icon),
        ),
      ),
    ];
  }
}
