Paddle = Actor:extend()

function Paddle:new(player, x, y, scale, speed, OMargin)
    Paddle.super.new(self,"Textures/"..player..".png", x, y, 0, 0,0, scale, scale)    
    self.player = player
    self.speed = speed
    self.margin = OMargin
end

function Paddle:update(dt)
    if self.player == "player" then
        if love.keyboard.isDown("up") and self.position.y > 0 + self.height * self.scale.y /2  then 
            self.position.y  = self.position.y - self.speed *dt
        end
        if love.keyboard.isDown ("down") and self.position.y<love.graphics.getHeight() - self.height * self.scale.y /2 then
            self.position.y  = self.position.y + self.speed *dt
        end
    else
        if(self.position.y - self.height * self.scale.y /2 + self.margin < b.position.y - self.margin and self.position.y<love.graphics.getHeight() - self.height * self.scale.y /2) then
            self.position.y  = self.position.y + self.speed *dt
        elseif (self.position.y - self.height * self.scale.y /2 + self.margin > b.position.y + self.margin and self.position.y > 0 + self.height * self.scale.y /2) then
            self.position.y =self.position.y - self.speed *dt
        end
    end

end

function Paddle:draw()
    xx = self.position.x
    ox = self.origin.x
    yy = self.position.y
    oy = self.origin.y
    sx = self.scale.x
    sy = self.scale.y
    rr = self.rot
    love.graphics.draw(self.image,xx,yy,rr,sx,sy,ox,oy,0,0)
end

