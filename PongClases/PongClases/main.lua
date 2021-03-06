actorList = {}  --Lista de elementos de juego


function love.load()
  require "Lib/vector"
  Object = require "Lib/object"
  require "Lib/actor"
  require "Scripts/ball"
  require "Scripts/paddle"
  require "Scripts/background"
  require "Scripts/score"
  require "Scripts/data"
  require "Scripts/menu"
  require "Scripts/menuSelector"
  require "Scripts/gameOver"

  m = Menu(menuImage, mPosX, mPosY, mScaleX, mScaleY)
  ms = MenuSelector(msImage, msPosX, msPosY, msScaleX, msScaleY)
  go = GameOver(goImage, goPosX, goPosY, goScaleX, goScaleY)
  bk1 = Back(bk1Image,bk1PosX, bk1PosY, bk1ScaleX, bk1ScaleY)
  bk2 = Back(bk2Image,bk2PosX, bk2PosY, bk2ScaleX, bk2ScaleY)
  b = Ball(speed, ballPosX, ballPosY, ballForwardX, ballForwardY, ballScale)
  p = Paddle("player", playerPosX, playerPosY, playerScale, speed)
  cpu = Paddle("cpu", cpuPosX, cpuPosY, cpuScale, speed)
  s = Score(playerScoreX, playerScoreY, cpuScoreX, cpuScoreY)
  
 
  table.insert(actorList,m)
  table.insert(actorList,ms)
  
  m1 = love.audio.newSource(m1Audio, "stream")
  m2 = love.audio.newSource(m2Audio, "stream")
  m3 = love.audio.newSource(m3Audio, "stream")
  love.audio.setVolume(volume)
  love.audio.play(m1)
end

function love.update(dt)
  
  if menu == false then
    if play == true then
      for i,v in pairs(actorList) do
        if v == m then
          table.remove(actorList,i)
        end
        if v == ms then
          table.remove(actorList,i)
        end
      end
    else
     love.event.push('quit')
    end
  end
  
  if cpuScore == maxScore or playerScore == maxScore then
    while table.getn(actorList) > 0 do
      for i,v in ipairs(actorList) do
        table.remove(actorList,i)
      end
    end
    cpuScore = startingScore
    playerScore = startingScore
    love.audio.stop()
    love.audio.play(m3)
    table.insert(actorList,go)
    gameOverMenu = true
  end

  for _,v in ipairs(actorList) do
      v:update(dt)
  end
  
  if gameOverMenu then
    timer = timer - 1 * dt
  end
end

function love.draw()
  for _,v in ipairs(actorList) do
      v:draw()
  end
end

function love.keyreleased(key)
  if key == "return" and menu then
    menu = false
    love.audio.stop()
    love.audio.play(m2)
    table.insert(actorList,bk1)
    table.insert(actorList,bk2)
    table.insert(actorList,s)
    table.insert(actorList,b)
    table.insert(actorList,p)
    table.insert(actorList,cpu)
  end
  
  if gameOverMenu and timer < 0 then
    love.event.push('quit')
  end
end