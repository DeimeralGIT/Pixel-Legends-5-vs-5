import 'dart:math';

import 'package:flame/game.dart';

class AssetModel {
  final String path;
  final double width;
  final double height;

  const AssetModel({
    required this.path,
    required this.width,
    required this.height,
  });

  Vector2? getScaleFitCover(Vector2? size) {
    if (size == null) return null;
    final coefficient = max(size.x / width, size.y / height);
    return Vector2(coefficient, coefficient);
  }

  Vector2? getPositionFitCover(
    Vector2? size, {
    double left = 0,
    double top = 0,
    double right = 0,
    double bottom = 0,
  }) {
    if (size == null) return null;
    return Vector2(
      ((width - size.x) / 2) + left - right,
      ((height - size.y) / 2) + top - bottom,
    );
  }
}
