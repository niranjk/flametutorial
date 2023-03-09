
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flametutorial/components/my_component.dart';

class MyGame extends FlameGame {

  /// FlameGame class provide a variable called debugMode which is false by default
  /// Set to true, enables debug feature for the components of the game.
  @override
  bool get debugMode => true;

  /// We change the background color overriding this method
  /// We cannot change background color dynamically while the game is running,
  /// but we can draw a background color that covers the whole canvas if we want
  /// to change it dynamically.
  @override
  Color backgroundColor() => const Color.fromARGB(255, 255, 255, 112);

  @override
  Future<void> onLoad() async{
    final flameSprite = await loadSprite('flame.png');

    add(MyComponent(radius: 100, position: camera.viewport.effectiveSize/2));

    await add(SpriteComponent(
      position: camera.viewport.effectiveSize / 2,
      sprite: flameSprite,
      size: Vector2(100, 150)
    )..anchor = Anchor.center
    );
    // startBgmMusic();
  }

  void startBgmMusic() {
    FlameAudio.bgm.play('bg_music.ogg');
  }

  @override
  void onRemove() {
    FlameAudio.bgm.dispose();
  }
}
