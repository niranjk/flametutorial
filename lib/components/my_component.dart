
import 'package:flame/components.dart';
import 'package:flame_audio/audio_pool.dart';

class MyComponent extends SpriteComponent {

  late AudioPool pool;

  @override
  Future<void> onLoad() async {
    sprite = await Sprite.load('flame.png');
  }
}
