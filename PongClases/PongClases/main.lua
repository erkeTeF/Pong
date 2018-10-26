actorList = {}  --Lista de elementos de juego


function love.load()
  loadfile ("data.lua")
  require "Scripts/vector"
  Object = require "Scripts/object"
  require "Scripts/actor"
  require "Scripts/ball"
  require "Scripts/pala"
  require "Scripts/palaCPU"
  require "Scripts/igualahora"
  require "Scripts/bk"

  sup = Back()
  bk = IgualAhora()
  b = Ball()
  p = Pala()
  cp = PalaC()
  
  table.insert(actorList,sup)
  table.insert(actorList,bk)
  table.insert(actorList,b)
  table.insert(actorList,p)
  table.insert(actorList,cp)
  table.insert(actorList,s)
  
  font = love.graphics.setNewFont("Fonts/pong.ttf", 60)
  m1 = love.audio.newSource("Sounds/m1.ogg", "stream")
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



