GameOver = Actor:extend()

function GameOver:new(gameOver, x, y, sx, sy)
  GameOver.super.new(self, gameOver, x, y, 0, 0, 0, sx, sy)
end

function GameOver:update(dt)
end

function GameOver:draw()
  xx = self.position.x
    ox = self.origin.x
    yy = self.position.y
    oy = self.origin.y
    sx = self.scale.x
    sy = self.scale.y
    rr = self.rot
    love.graphics.draw(self.image,xx,yy,rr,sx,sy,ox,oy,0,0)
  end