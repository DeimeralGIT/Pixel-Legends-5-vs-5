import 'package:flame/game.dart';
import 'package:flutter/cupertino.dart';

Vector2? size;
BuildContext? context;

initializeConstants(FlameGame game) {
  size = game.size;
  context = game.buildContext;
}
