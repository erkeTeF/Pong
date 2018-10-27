actorList = {}  --Lista de elementos de juego


function love.load()
  loadfile ("Scripts/data")
  require "Lib/vector"
  Object = require "Lib/object"
  require "Scripts/actor"
  require "Scripts/ball"
  require "Scripts/pala"
  require "Scripts/background"
  require "Scripts/score"

  bk1 = Back("Textures/grass.jpeg", 1, 1.2)
  bk2 = Back("Textures/pokegym.png", 2, 3.1)
  b = Ball()
  p = Pala("player", love.graphics.getWidth() / 20, love.graphics.getHeight()/2, 0.2, 0.2)
  cp = Pala("cpu", love.graphics.getWidth() / 20 * 19, love.graphics.getHeight()/2, 0.112, 0.1120)
  s = Score("player",love.graphics.getWidth() / 4, love.graphics.getHeight() / 10)
  scpu = Score("cpu",love.graphics.getWidth() / 4*3, love.graphics.getHeight() / 10)
  
  table.insert(actorList,bk1)
  table.insert(actorList,bk2)
  table.insert(actorList,b)
  table.insert(actorList,p)
  table.insert(actorList,cp)
  table.insert(actorList,s)
  table.insert(actorList,scpu)
  
  
  m1 = love.audio.newSource("Sounds/m1.ogg", "stream")
  love.audio.setVolume(0.6)
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



