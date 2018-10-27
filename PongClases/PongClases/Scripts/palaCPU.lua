PalaC = Actor:extend()

function PalaC:new()   
    PalaC.super.new(self,"Textures/cpu.png", love.graphics.getWidth()/20 * 19, love.graphics.getHeight()/2, 0, 0,0, 0.112, 0.112)
    cpuScore = 0
end

function PalaC:update(dt)
  if(self.position.y - self.height * self.scale.y /2 + 38 < b.position.y-20 and self.position.y<love.graphics.getHeight() - self.height * self.scale.y /2) then
      self.position.y  = self.position.y + 400 *dt
    elseif (self.position.y - self.height * self.scale.y /2 + 38 > b.position.y +20 and self.position.y > 0 + self.height * self.scale.y /2) then
      self.position.y =self.position.y - 400 *dt
    end
end

function PalaC:draw()
    xx = self.position.x
    ox = self.origin.x
    yy = self.position.y
    oy = self.origin.y
    sx = self.scale.x
    sy = self.scale.y
    rr = self.rot
    love.graphics.draw(self.image,xx,yy,rr,sx,sy,ox,oy,0,0)
end