Menu = Actor:extend()

function Menu:new(image, x, y, sx, sy)
  Back.super.new(self, image, x, y, 0, 0, 0, sx, sy)
end

function Menu:update(dt)
end

function Menu:draw()
  xx = self.position.x
    ox = self.origin.x
    yy = self.position.y
    oy = self.origin.y
    sx = self.scale.x
    sy = self.scale.y
    rr = self.rot
    love.graphics.draw(self.image,xx,yy,rr,sx,sy,ox,oy,0,0)
  end