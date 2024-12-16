import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/flame.dart';
import 'package:flutter/material.dart';
import 'package:pixel_legends_5_vs_5/UI/components/assets.dart';
import 'package:pixel_legends_5_vs_5/utils/keyboard_utils.dart';
import 'package:pixel_legends_5_vs_5/utils/static_params.dart';

class TextInputComponent extends PositionComponent with TapCallbacks {
  TextInputComponent({
    required Vector2 position,
    required this.label,
  }) : super(
          position: position,
          size: Vector2(200, 50),
        );

  final String label;

  @override
  void onTapUp(TapUpEvent event) {
    final keyboardUtils = KeyboardUtils(context!);
    keyboardUtils.openKeyboard();
    super.onTapUp(event);
  }

  @override
  FutureOr<void> onLoad() async {
    final inputBgImage = await Flame.images.load(inputBg.path);
    final inputBgSprite = SpriteComponent.fromImage(
      inputBgImage,
      size: Vector2(200, 50),
      position: position,
    );

    final textBox = TextBoxComponent(
      text: label,
      textRenderer: TextPaint(
        style: const TextStyle(
          color: Colors.black,
          fontSize: 17,
        ),
      ),
      size: Vector2(170, 50),
      position: Vector2(15, 7),
    );

    inputBgSprite.add(textBox);
    findGame()!.world.add(inputBgSprite);
    return super.onLoad();
  }
}
