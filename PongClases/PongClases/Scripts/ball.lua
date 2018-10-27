Ball = Actor:extend()

function Ball:new(speed)
  Ball.super.new(self,"Textures/PokeBall.png", love.graphics.getWidth()/2, love.graphics.getHeight()/2, speed, 1,0.75, 0.2, 0.2)    
  initialSpeed = 400
  ballSpeed = initialSpeed
  initialX = love.graphics.getWidth()/2
  initialY = love.graphics.getHeight()/2
  derecha = true
  debeRebotar = true
  time =  0.1
end

function Ball:update(dt)
  if (Actor.intersect(self, p) and derecha == false) then
    self.forward.x = self.forward.x * -1
    self.forward.y = math.random(-0.8,0.8)
    ballSpeed = ballSpeed +20
    derecha = true
  end

  if (Actor.intersect(self, cp) and derecha) then
    self.forward.x = self.forward.x * -1
    self.forward.y = math.random(-0.8,0.8)
    ballSpeed = ballSpeed +20
    derecha = false
  end

  if (self.position.y <0 and debeRebotar ) then
      self.forward.y = self.forward.y * -1
      parriba = false
      debeRebotar = false
  end

  if (self.position.y > love.graphics.getHeight() and debeRebotar ) then
    self.forward.y = self.forward.y * -1
    parriba = true
    debeRebotar = false
  end
    
  if ( debeRebotar == false ) then
    time = time - 1 * dt
    if( time < 0 ) then
      debeRebotar = true
      time = 0.1
    end
  end

  if (self.position.x + self.width*self.scale.x < 0 ) then
      self.position.x = initialX
      self.position.y = initialY
      ballSpeed = initialSpeed
      cpuScore = cpuScore + 1
      self.forward.y = 0
  end

  if(self.position.x > love.graphics.getWidth()) then
      self.position.x = initialX
      self.position.y = initialY
      ballSpeed = initialSpeed
      playerScore = playerScore + 1
      self.forward.y = 0
  end
  b.position.x = b.position.x + ballSpeed * self.forward.x * dt
  b.position.y = b.position.y + ballSpeed * self.forward.y * dt
end

function Ball:draw()
    xx = self.position.x
    ox = self.origin.x
    yy = self.position.y
    oy = self.origin.y
    sx = self.scale.x
    sy = self.scale.y
    rr = self.rot
    love.graphics.draw(self.image,xx,yy,rr,sx,sy,ox,oy,0,0)
end
