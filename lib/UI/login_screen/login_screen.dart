import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:pixel_legends_5_vs_5/UI/components/assets.dart';
import 'package:pixel_legends_5_vs_5/UI/components/text_input_component.dart';
import 'package:pixel_legends_5_vs_5/utils/static_params.dart';

class LoginScreen extends Component with HasGameRef<FlameGame> {
  @override
  Future<void> onLoad() async {
    super.onLoad();

    final loginScreenBgImage = await Flame.images.load(loginScreenBg.path);
    final loginScreenBgSprite = SpriteComponent.fromImage(
      loginScreenBgImage,
      size: size,
      position: loginScreenBg.getPositionFitCover(size),
      scale: loginScreenBg.getScaleFitCover(size),
    );
    add(loginScreenBgSprite);

    final loginInput = TextInputComponent(
      position: Vector2(size!.x - 300, size!.y * 0.3),
      label: 'Username',
    );
    add(loginInput);

    final passwordInput = TextInputComponent(
      position: Vector2(size!.x - 300, size!.y * 0.5),
      label: 'Password',
    );
    add(passwordInput);
  }
}
