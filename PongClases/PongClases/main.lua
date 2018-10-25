actorList = {}  --Lista de elementos de juego


function love.load()
  loadfile ("data.lua")
  require "Scripts/vector"
  Object = require "Scripts/object"
  require "Scripts/actor"
  require "Scripts/ball"
  require "Scripts/pala"
  require "Scripts/palaCPU"
  require "Scripts/Scores"
  require "Scripts/igualahora"
  require "Scripts/bk"

sup = Back()
bk = IgualAhora()
 b = Ball()
p = Pala()
cp = PalaC()
s = Scores()
  
  table.insert(actorList, sup)
  table.insert(actorList,bk)
  table.insert(actorList,b)
  table.insert(actorList, p)
  table.insert(actorList, cp)
  table.insert(actorList, s)
  
  font = love.graphics.setNewFont("Fonts/pong.ttf", 60)
  playerScore = 0
  cpuScore = 0
  
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
    love.graphics.print(playerScore,love.graphics.getWidth() / 4, love.graphics.getHeight() / 10)
    love.graphics.print(cpuScore,love.graphics.getWidth() / 4 * 3, love.graphics.getHeight() / 10)
    
end



