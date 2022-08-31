import 'package:flutter/material.dart';
import 'dart:ui' as ui;

/// A widget that draws a shadow around its child [Icon].
/// You may modify the shadow color, blur and offset using the [shadowColor], [shadowBlurSigma] and [shadowOffset]
/// properties.
class IconShadow extends StatelessWidget {
  /// The icon to draw a shadow around.
  final Icon icon;

  /// Whether to display or hide the shadow.
  final bool showShadow;

  /// The blur sigma of the shadow.
  final double shadowBlurSigma;

  /// The color of the shadow.
  final Color? shadowColor;

  /// The offset of the shadow.
  final Offset? shadowOffset;

  /// A widget that draws a shadow around its child [Icon].
  /// You may modify the shadow color, blur and offset using the [shadowColor], [shadowBlurSigma] and [shadowOffset]
  /// properties.
  const IconShadow(
    this.icon, {
    Key? key,
    this.showShadow = true,
    this.shadowColor,
    this.shadowBlurSigma = 0.9,
    this.shadowOffset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final compensationPadding = _getCompensationPadding();

    if (!showShadow) {
      return Padding(
        padding: compensationPadding,
        child: icon,
      );
    }

    final _offset = shadowOffset ?? Offset.zero;

    final list = <Widget>[
      Positioned(
        top: _offset.dy < 0 ? _offset.dy / 2 : null,
        left: _offset.dx < 0 ? _offset.dx / 2 : null,
        bottom: _offset.dy > 0 ? -_offset.dy / 2 : null,
        right: _offset.dx > 0 ? -_offset.dx / 2 : null,
        child: Stack(
          alignment: Alignment.center,
          children: _buildShadowWidgets(),
        ),
      ),
      icon,
    ];

    return Stack(
      alignment: Alignment.center,
      children: list,
    );
  }

  EdgeInsets _getCompensationPadding() {
    final _offset = shadowOffset ?? Offset.zero;

    final compensationPadding = EdgeInsets.only(
      top: _offset.dy < 0 ? -_offset.dy : 0,
      bottom: _offset.dy > 0 ? _offset.dy : 0,
      left: _offset.dx < 0 ? -_offset.dx : 0,
      right: _offset.dx > 0 ? _offset.dx : 0,
    );
    return compensationPadding;
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
          child: IconTheme(data: const IconThemeData(opacity: 0.0), child: icon),
        ),
      ),
    ];
  }
}
