Score = Actor:extend()
function Score:new(px,py,cx,cy,fontSize)
    font = love.graphics.setNewFont("Fonts/pong.ttf", fontSize)
    self.player = player
    self.pxx = px
    self.pyy = py
    self.cxx = cx
    self.cyy = cy
    
    playerScore = 0
    cpuScore = 0
end

function Score:update(dt)

end

function Score:draw()
    love.graphics.print(playerScore, self.pxx, self.pyy)
    love.graphics.print(cpuScore, self.cxx, self.cyy)
end