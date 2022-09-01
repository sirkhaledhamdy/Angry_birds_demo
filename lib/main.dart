import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:flutter/material.dart';
import 'live/player.dart';
import 'world/ground.dart';
import 'world/obstacle.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.setLandscape();
  Flame.device.fullScreen();
  runApp(GameWidget(game: MyGame(),),);
}

class MyGame extends Forge2DGame with HasTappables {
  @override
  Future<void> onLoad() async {
    await super.onLoad();
    camera.viewport = FixedResolutionViewport(Vector2(1400, 780));


    add(
      SpriteComponent(sprite: await loadSprite('background.webp'), size: size),
    );
    add(Ground(size));
    add(Player());

    add(Obstacle(Vector2(60,0), await loadSprite('pig.webp',),),);
    add(Obstacle(Vector2(60,12), await loadSprite('crate.png',),),);
    add(Obstacle(Vector2(60,24), await loadSprite('crate.png',),),);
    add(Obstacle(Vector2(60,36), await loadSprite('barrel.png',),),);
    add(Obstacle(Vector2(70,-36), await loadSprite('pig.webp',),),);
    add(Obstacle(Vector2(70,-12), await loadSprite('crate.png',),),);
    add(Obstacle(Vector2(70,0), await loadSprite('pig.webp',),),);
    add(Obstacle(Vector2(70,12), await loadSprite('crate.png',),),);
    add(Obstacle(Vector2(70,24), await loadSprite('crate.png',),),);
    add(Obstacle(Vector2(70,36), await loadSprite('barrel.png',),),);
    add(Obstacle(Vector2(70,48), await loadSprite('crate.png',),),);
    add(Obstacle(Vector2(70,60), await loadSprite('crate.png',),),);
    add(Obstacle(Vector2(80,-12), await loadSprite('crate.png',),),);
    add(Obstacle(Vector2(80,0), await loadSprite('pig.webp',),),);
    add(Obstacle(Vector2(80,12), await loadSprite('crate.png',),),);
    add(Obstacle(Vector2(80,24), await loadSprite('crate.png',),),);
    add(Obstacle(Vector2(80,36), await loadSprite('barrel.png',),),);
    add(Obstacle(Vector2(80,48), await loadSprite('crate.png',),),);
    add(Obstacle(Vector2(80,60), await loadSprite('crate.png',),),);
    add(Obstacle(Vector2(80,72), await loadSprite('crate.png',),),);

  }
}






