Pala = Actor:extend()

function Pala:new()
    Pala.super.new(self,"Textures/player.png", love.graphics.getWidth()/20, love.graphics.getHeight()/2, 0, 0,0, 0.2, 0.2)    
end

function Pala:update(dt)
  if love.keyboard.isDown("up") then
 self.position.y  = self.position.y - 400 *dt
end
if love.keyboard.isDown ("down") then
  self.position.y  = self.position.y + 400 *dt
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

