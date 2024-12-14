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

  Vector2 getScaleFitWidth(Vector2 size) {
    return Vector2(size.x / width, size.x / width);
  }

  Vector2 getPositionFitWidth(Vector2 size) {
    return Vector2((width - size.x) / 2, (height - size.y) / 2);
  }
}
