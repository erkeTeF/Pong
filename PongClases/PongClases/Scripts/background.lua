Back = Actor:extend()

function Back:new(background, sx, sy)
  Back.super.new(self,background, love.graphics.getWidth()/2, love.graphics.getHeight()/2, 0, 0,0, sx, sy)    
end

function Back:update(dt)
end

function Back:draw()
  xx = self.position.x
    ox = self.origin.x
    yy = self.position.y
    oy = self.origin.y
    sx = self.scale.x
    sy = self.scale.y
    rr = self.rot
    love.graphics.draw(self.image,xx,yy,rr,sx,sy,ox,oy,0,0)
  end