


import 'dart:ui';

import 'package:flame/collisions.dart';
import 'package:flame/game.dart';

import '../components/ball.dart';

class BouncingBallGame extends FlameGame with HasCollisionDetection {

  @override
  Color backgroundColor() => const Color.fromARGB(255, 100, 100, 255);

  @override
  void onLoad(){
    addAll(
      [
        ScreenHitbox(),
        Ball()
      ]
    );
  }
}