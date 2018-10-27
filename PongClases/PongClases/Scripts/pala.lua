Pala = Actor:extend()

function Pala:new(player, x, y, sx, sy)
    Pala.super.new(self,"Textures/"..player..".png", x, y, 0, 0,0, sx, sy)    
    self.player = player
    playerScore = 0
    cpuScore = 0
end

function Pala:update(dt)
    if self.player == "player" then
        if love.keyboard.isDown("up") and self.position.y > 0 + self.height * self.scale.y /2  then 
            self.position.y  = self.position.y - 400 *dt
        end
        if love.keyboard.isDown ("down") and self.position.y<love.graphics.getHeight() - self.height * self.scale.y /2 then
            self.position.y  = self.position.y + 400 *dt
        end
    else
        if(self.position.y - self.height * self.scale.y /2 + 38 < b.position.y-20 and self.position.y<love.graphics.getHeight() - self.height * self.scale.y /2) then
            self.position.y  = self.position.y + 400 *dt
        elseif (self.position.y - self.height * self.scale.y /2 + 38 > b.position.y +20 and self.position.y > 0 + self.height * self.scale.y /2) then
            self.position.y =self.position.y - 400 *dt
        end
    end

end

function Pala:draw()
    xx = self.position.x
    ox = self.origin.x
    yy = self.position.y
    oy = self.origin.y
    sx = self.scale.x
    sy = self.scale.y
    rr = self.rot
    love.graphics.draw(self.image,xx,yy,rr,sx,sy,ox,oy,0,0)
end

