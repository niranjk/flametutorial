
import 'dart:ui';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';


class MyComponent extends PositionComponent with CollisionCallbacks{
   MyComponent({required double radius, Paint? paint, Vector2? position})
     : _radius = radius,
       _paint = paint ?? Paint()..color=Color(0xFF80C080),
       super(
         position: position,
        size: Vector2.all(2 * radius),
         anchor: Anchor.center,
      );

   double _radius;
   Paint _paint;

   @override
   void render(Canvas canvas) {
     super.render(canvas);
     canvas.drawCircle(Offset(_radius, _radius), _radius, _paint);
   }
 }
