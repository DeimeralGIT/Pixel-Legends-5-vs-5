import 'package:flame/components.dart';
import 'package:flame/layout.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends PositionComponent {
  @override
  Future<void> onLoad() async {
    super.onLoad();

    final scoreText = AlignComponent(
      alignment: Anchor.center,
      child: TextComponent(
        text: 'PIXEL LEGENDS 5 VS 5',
        textRenderer: TextPaint(
          style: const TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
    );
    add(scoreText);

    add(RectangleComponent()
      ..size = size
      ..paint = Paint()
      ..setColor(const Color(0xFF00FF00)));

    add(scoreText);
  }
}
