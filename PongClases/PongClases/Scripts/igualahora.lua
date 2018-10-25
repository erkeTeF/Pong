IgualAhora = Actor:extend()


function IgualAhora:new()
  IgualAhora.super.new(self,"Textures/pokegym.png", love.graphics.getWidth()/2, love.graphics.getHeight()/2, 0, 0,0, 2, 3.1)    
end

function IgualAhora:update(dt)
  
  
end

function IgualAhora:draw()
  xx = self.position.x
    ox = self.origin.x
    yy = self.position.y
    oy = self.origin.y
    sx = self.scale.x
    sy = self.scale.y
    rr = self.rot
    love.graphics.draw(self.image,xx,yy,rr,sx,sy,ox,oy,0,0)
  end