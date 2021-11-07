require("keyboardfunc")
require('gamerules')
require('fonts')

function love.textinput(key)
  keyPress = key
  if not headBreak() or snakeExit() then
    restartGame()
    keyPress=nil
    keyPause(keyPress)
    end
end

function love.draw()
  love.graphics.setColor(0.17,0.17,0.17)
  love.graphics.draw(backside,0,0)
  love.graphics.setFont(f_s)
  drawFood()
  drawSnake()
  keyPause(keyPress)
  if not headBreak() or snakeExit() then
    love.graphics.setFont(f_b)
    love.graphics.print('You lose!',155,250) 
    love.graphics.setFont(f_s)
    love.graphics.print('To restart press any key',200,250)
    refrshJoysteak()
  end
  love.graphics.print('Score '..eated)
end

function love.load()
  love.window.setTitle("Snake Game")
  backside = love.graphics.newImage("snake.png")
  f_s,f_n,f_b = createFonts()
  eated = 0
  love.window.setMode(600, 600)
  snake = {head = {x=300,y=300,color={r=0.38,g=0.2,b=0.7}}}
  interval = 20
end

function love.update(dt)
  interval = interval - 1
  if interval < 0 and headBreak() then
  exX,exY  = seachLast(snake)
  joysteak(keyPress)
  if food == nil then
    local x = snake.head.x
    local y = snake.head.y
    while (checker(x,y)) do
    x =30*love.math.random(0,19)
    y =30*love.math.random(0,19)
    food={x=x,y=y}
    end
  elseif snake.head.x == food.x and snake.head.y == food.y then
    food = nil
    eated = eated + 1
    snake[eated] = {x=exX,y=exY,color={r=0.74,g=0.61,b=0.81-(eated-1)/50}}
  end
  interval = 20
  end
  end