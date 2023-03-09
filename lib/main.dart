
import 'package:flame/game.dart';
import 'package:flametutorial/games/bouncing_ball_game.dart';
import 'package:flutter/material.dart';

void main(){
  var game = BouncingBallGame();
  runApp(GameWidget(game: game));
}