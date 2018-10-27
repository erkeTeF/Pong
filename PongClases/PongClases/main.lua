actorList = {}  --Lista de elementos de juego


function love.load()
  require "Lib/vector"
  Object = require "Lib/object"
  require "Scripts/actor"
  require "Scripts/ball"
  require "Scripts/paddle"
  require "Scripts/background"
  require "Scripts/score"
  require "Scripts/data"

  bk1 = Back("Textures/grass.jpeg",bk1PosX, bk1PosY, bk1ScaleX, bk1ScaleY)
  bk2 = Back("Textures/pokegym.png",bk2PosX, bk2PosY, bk2ScaleX, bk2ScaleY)
  b = Ball(speed, ballSpeedSum, ballPosX, ballPosY, ballForwardX, ballForwardY, ballScale, ballRndAngle)
  p = Paddle("player", playerPosX, playerPosY, playerScale, speed, OMargin)
  cpu = Paddle("cpu", cpuPosX, cpuPosY, cpuScale, speed, OMargin)
  s = Score(playerScoreX, playerScoreY, cpuScoreX, cpuScoreY, fontSize)
  
  table.insert(actorList,bk1)
  table.insert(actorList,bk2)
  table.insert(actorList,s)
  table.insert(actorList,b)
  table.insert(actorList,p)
  table.insert(actorList,cpu)
  
  m1 = love.audio.newSource("Sounds/m1.ogg", "stream")
  love.audio.setVolume(volume)
  love.audio.play(m1)
end

function love.update(dt)
  for _,v in ipairs(actorList) do
      v:update(dt)
  end
end

function love.draw()
  for _,v in ipairs(actorList) do
      v:draw()
  end
end



