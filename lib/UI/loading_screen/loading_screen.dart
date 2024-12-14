import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:pixel_legends_5_vs_5/UI/components/assets.dart';

class LoadingScreen extends Component {
  late final Sprite loadingSprite;
  late final Vector2 size;
  double elapsed = 0;

  @override
  Future<void> onLoad() async {
    super.onLoad();
    final loadingScreenBgImage = await Flame.images.load(loadingScreenBg.path);
    final loadingScreenBgSprite = SpriteComponent.fromImage(
        loadingScreenBgImage,
        size: size,
        position: loadingScreenBg.getPositionFitCover(size),
        scale: loadingScreenBg.getScaleFitCover(size));
    add(loadingScreenBgSprite);
  }

  @override
  void update(double dt) {
    super.update(dt);

    elapsed += dt;
    if (elapsed > 3 && isLoaded) {
      removeFromParent();
    }
  }
}
