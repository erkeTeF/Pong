actorList = {}  --Lista de elementos de juego


function love.load()
  require "Lib/vector"
  Object = require "Lib/object"
  require "Scripts/actor"
  require "Scripts/ball"
  require "Scripts/pala"
  require "Scripts/background"
  require "Scripts/score"
  require "Scripts/data"

  bk1 = Back("Textures/grass.jpeg", bk1ScaleX, bk1ScaleY)
  bk2 = Back("Textures/pokegym.png", bk2ScaleX, bk2ScaleY)
  b = Ball()
  p = Pala("player", playerPosX, playerPosY, playerScaleX, playerScaleY, speed)
  cpu = Pala("cpu", cpuPosX, cpuPosY, cpuScaleX, cpuScaleY, speed)
  s = Score("player", playerScoreX, playerScoreY)
  scpu = Score("cpu",cpuScoreX, cpuScoreY)
  
  table.insert(actorList,bk1)
  table.insert(actorList,bk2)
  table.insert(actorList,b)
  table.insert(actorList,p)
  table.insert(actorList,cpu)
  table.insert(actorList,s)
  table.insert(actorList,scpu)
  
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



