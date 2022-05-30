function drawFood()
  love.graphics.setColor(0, 1, 0)
  if food then love.graphics.rectangle('fill', food.x, food.y, 30, 30, 10, 10) end
end

function drawSnake()
  for a,b in pairs(snake) do
    love.graphics.setColor(b.color.r, b.color.g, b.color.b)
    love.graphics.rectangle('fill', b.x, b.y, 30, 30, 10, 10) 
  end
end

function seachLast(snake)
  if (snake[1] == nil) then return snake.head.x, snake.head.y
  else
  for i = 1, math.huge do
    if (snake[i] ~= nil) then
      x = snake[i].x
      y = snake[i].y
    else break end
  end
  return x, y
  end
end

function headBreak()
  for i = 1, eated do
    if (snake[i].x == snake.head.x) and (snake[i].y == snake.head.y) then
      return false
      end
    end
  return true
  end
  
  function restartGame()
     eated = 0
     snake = {head = {x = 300, y = 300, color = {r = 0.38, g = 0.2, b = 0.7}}}
     food = nil
  end
    
function checker(myx, myy)
  for a, b in pairs(snake) do
    if (b.x == myx) and (b.y == myy) then return true end
  end
  return false
end

function snakeExit()
  if (snake.head.x < 0) or (snake.head.x >= 600) or (snake.head.y < 0) or (snake.head.y >= 600) then
    return true
  end
    return false
  end