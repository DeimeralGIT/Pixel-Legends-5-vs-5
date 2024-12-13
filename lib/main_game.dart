import 'dart:async';

import 'package:flame/camera.dart';
import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:pixel_legends_5_vs_5/UI/loading_screen/loading_screen.dart';

class MainGame extends FlameGame {
  MainGame() : super(camera: CameraComponent(viewport: MaxViewport()));

  @override
  FutureOr<void> onLoad() async {
    super.onLoad();

    Flame.device
      ..fullScreen()
      ..setLandscape();

    camera.viewfinder.anchor = Anchor.topLeft;

    final loadingScreen = LoadingScreen();
    loadingScreen.size = Vector2(size.x, size.y);

    world.add(loadingScreen);
  }
}
