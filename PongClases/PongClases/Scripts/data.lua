--Menu
menuImage = "Textures/menu.png"
mPosX, mPosY = love.graphics.getWidth() / 2, love.graphics.getHeight() / 2
mScaleX, mScaleY = 1, 1
menu = true

--MenuSelector
msImage = "Textures/ultraBall.png"
msPosX, msPosY = 500, 375
msScaleX, msScaleY = 0.1, 0.1
maxScale, minScale = 0.12, 0.08
scaleValue = 0.05

--GameOver
goImage = "Textures/gameOver.png"
goPosX, goPosY = love.graphics.getWidth() / 2, love.graphics.getHeight() / 2
goScaleX, goScaleY = 1, 1
gameOverMenu = false
timer = 1

--Background
bk1Image = "Textures/grass.jpeg"
bk2Image = "Textures/pokegym.png"
bk1PosX, bk1PosY = love.graphics.getWidth() / 2, love.graphics.getHeight() / 2
bk2PosX, bk2PosY = love.graphics.getWidth() / 2, love.graphics.getHeight() / 2
bk1ScaleX, bk1ScaleY = 1, 1.2
bk2ScaleX, bk2ScaleY = 2, 3.1

--Ball
ballPosX, ballPosY = love.graphics.getWidth() / 2, love.graphics.getHeight() / 2
ballScale = 0.2
ballForwardX, ballForwardY = 1, 0.5
ballSpeedSum = 20
ballRndAngle = 8

--Palas
speed = 400
playerPosX, playerPosY = love.graphics.getWidth() / 20, love.graphics.getHeight()/2
playerScale = 0.2
cpuPosX, cpuPosY = love.graphics.getWidth() / 20*19, love.graphics.getHeight()/2
cpuScale = 0.112
OMargin = 38

--Score
playerScoreX, playerScoreY = love.graphics.getWidth() / 4, love.graphics.getHeight() / 10
cpuScoreX, cpuScoreY = love.graphics.getWidth() / 4*3, love.graphics.getHeight() / 10
fontSize = 60
startingScore = 0
maxScore = 7

--Audio
m1Audio = "Sounds/m1.ogg"
m2Audio = "Sounds/m2.ogg"
m3Audio = "Sounds/m3.ogg"
volume = 0.4