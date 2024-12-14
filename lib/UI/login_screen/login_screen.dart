import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:pixel_legends_5_vs_5/UI/components/assets.dart';
import 'package:pixel_legends_5_vs_5/utils/static_params.dart';

class LoginScreen extends Component {
  @override
  Future<void> onLoad() async {
    super.onLoad();
    final loginScreenBgImage = await Flame.images.load(loginScreenBg.path);
    final loginScreenBgSprite = SpriteComponent.fromImage(loginScreenBgImage,
        size: size,
        position: loginScreenBg.getPositionFitCover(size),
        scale: loginScreenBg.getScaleFitCover(size));
    add(loginScreenBgSprite);
  }
}
