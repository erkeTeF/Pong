PalaC = Actor:extend()

function PalaC:new()
<<<<<<< HEAD
    PalaC.super.new(self,"Textures/cpu.png", love.graphics.getWidth()/20 * 19, love.graphics.getHeight()/2, 0, 0,0, 0.112, 0.112)    
=======
    PalaC.super.new(self,"Textures/cpu.png", love.graphics.getWidth()/20 * 19, love.graphics.getHeight()/2, 0, 0,0, 0.112, 0.112)
    cpuScore = 0
>>>>>>> 0dc2b1d9542320087cebff6b621085f55fbb2420
end

function PalaC:update(dt)
  if(self.position.y + 38 < b.position.y-20) then
      self.position.y  = self.position.y + 400 *dt
    elseif (self.position.y + 38 > b.position.y +20) then
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
    love.graphics.print(cpuScore,love.graphics.getWidth() / 4 * 3, love.graphics.getHeight() / 10)
end