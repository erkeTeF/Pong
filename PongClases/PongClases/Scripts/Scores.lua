Scores = Actor:extend()

function Scores:new()
    love.graphics.setNewFont("Fonts/pong.ttf",60 )
    score1 = 0
end

function Scores:update(dt)
  love.graphics.print (score1,love.graphics.getWidth() / 4, 50, 0, 1, 1, 20, 30)
   -- love.graphics.print(playerScore, love.graphics.getWidth() / 4, 50, 0, 1, 1, 20, 30)
   -- love.graphics.print(cpuScore, love.graphics.getWidth() / 4 * 3, 50, 0, 1, 1, 20, 30)
end

function Scores:draw()
    
  
end
