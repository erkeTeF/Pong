Score = Actor:extend()
function Score:new(player,x,y)
    font = love.graphics.setNewFont("Fonts/pong.ttf", 60)
    self.player = player
    self.xx = x
    self.yy = y
end

function Score:update(dt)

end

function Score:draw()
    if self.player == "player" then
    love.graphics.print(playerScore, self.xx, self.yy)
    else
    love.graphics.print(cpuScore, self.xx, self.yy)
    end
end