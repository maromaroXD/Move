Entity = assert require "entity"
Box = assert require "box"
followPlayer = assert require "ai.follow_player"

Missle = {}


collision = (other, game) =>
  ocbox = other.cBox
  if other.name == "player"
    @Dead!
    print @name .. " is dead"

with Missle

  .create = (x,y,speed) ->
    missle = Entity "missle", nil, x, y,
            10, collision,followPlayer,
            Box 10, 10, 10, 10

    missle


Missle
