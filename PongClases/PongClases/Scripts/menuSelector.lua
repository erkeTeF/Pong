MenuSelector = Actor:extend()

function MenuSelector:new(image, x, y, sx, sy)
  MenuSelector.super.new(self, image, x, y, 0, 0, 0, sx, sy)
  play = true
  scaling = true
end

function MenuSelector:update(dt)
   if love.keyboard.isDown("down") and play then
     play = false
     self.position.y = msPosX
   elseif love.keyboard.isDown("up") and play == false then
     play = true
     self.position.y = msPosY
   end
   if scaling then
     self.scale.x = self.scale.x + scaleValue * dt
     self.scale.y = self.scale.x + scaleValue * dt
    else
      self.scale.x = self.scale.x - scaleValue * dt
      self.scale.y = self.scale.x - scaleValue * dt
    end
    if self.scale.x > maxScale then
      scaling = false
    end
    if self.scale.x < minScale then
      scaling = true
    end
end

function MenuSelector:draw()
  xx = self.position.x
    ox = self.origin.x
    yy = self.position.y
    oy = self.origin.y
    sx = self.scale.x
    sy = self.scale.y
    rr = self.rot
    love.graphics.draw(self.image,xx,yy,rr,sx,sy,ox,oy,0,0)
  end