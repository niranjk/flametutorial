import 'package:flame/game.dart';
import 'package:flametutorial/games/my_game.dart';
import 'package:flutter/material.dart';

void main() {
  final game = MyGame();
  runApp(GameWidget(game: game));
}
