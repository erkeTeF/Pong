Ball = Actor:extend()

function Ball:new(speed, x, y, fx, fy, scale)
  Ball.super.new(self,"Textures/PokeBall.png", x, y, speed, fx, fy, scale, scale)
  self.speed = speed   
  self.speedSum = ballSpeedSum 
  self.rAngle = ballRndAngle
  ballSpeed = self.speed
  initialX = x
  initialY = y
  derecha = true
  debeRebotar = true
  time =  0.1
end

function Ball:update(dt)
  if (Actor.intersect(self, p) and derecha == false) then
    if self.position.x - self.height * self.scale.x / 2 < p.position.x then
      self.forward.y = self.forward.y * -1
    elseif self.position.y + self.height * self.scale.y > p.position.y then
      self.forward.x = self.forward.x * -1
      self.forward.y = math.random(0, self.rAngle) / 10
    elseif self.position.y - self.height * self.scale.y < p.position.y then
      self.forward.x = self.forward.x * -1
      self.forward.y = math.random(-self.rAngle, 0) / 10
    else
      self.forward.x = self.forward.x * -1
      self.forward.y = math.random(-self.rAngle, self.rAngle) / 10
    end
    ballSpeed = ballSpeed + self.speedSum
    derecha = true
  end

  if (Actor.intersect(self, cpu) and derecha) then
    if self.position.x - self.height * self.scale.x / 2 > cpu.position.x then
      self.forward.y = self.forward.y * -1
    elseif self.position.y + self.height * self.scale.y > cpu.position.y then
      self.forward.x = self.forward.x * -1
      self.forward.y = math.random(0,self.rAngle) / 10
    elseif self.position.y - self.height * self.scale.y < cpu.position.y then
      self.forward.x = self.forward.x * -1
      self.forward.y = math.random(-self.rAngle,0) / 10
    else
      self.forward.x = self.forward.x * -1
      self.forward.y = math.random(-self.rAngle,self.rAngle) / 10
    end
    ballSpeed = ballSpeed + self.speedSum
    derecha = false
  end

  if (self.position.y < 0 and debeRebotar ) then
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
    time = time - dt
    if( time < 0 ) then
      debeRebotar = true
      time = 0.1
    end
  end

  if (self.position.x + self.width*self.scale.x < 0 ) then
      self.position.x = initialX
      self.position.y = initialY
      ballSpeed = self.speed
      cpuScore = cpuScore + 1
      self.forward.y = 0
      derecha = false
  end

  if(self.position.x > love.graphics.getWidth()) then
      self.position.x = initialX
      self.position.y = initialY
      ballSpeed = self.speed
      playerScore = playerScore + 1
      self.forward.y = 0
      derecha = true
  end
  self.position.x = self.position.x + ballSpeed * self.forward.x * dt
  self.position.y = self.position.y + ballSpeed * self.forward.y * dt
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
