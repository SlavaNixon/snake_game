function allMove()
  for i=eated ,2,-1 do
      snake[i].x=snake[i-1].x
      snake[i].y=snake[i-1].y
    end
    if snake[1]~= nil then
      snake[1].x=snake['head'].x
      snake[1].y=snake['head'].y
    end
end

local str = 'y'
local num = 0
function joysteak(keyPress)
  if (keyPress =='w' or keyPress =='ц' or keyPress =='Ц' or keyPress =='W') and (checkBackMove(-30,'y','x')) then
    allMove()
    snake.head.y = snake.head.y - 30
    str = 'y'
    num = -30
  elseif (keyPress =='s' or keyPress =='Ы' or keyPress =='S' or keyPress =='ы') and (checkBackMove(30,'y','x')) then
    allMove()
    snake.head.y = snake.head.y + 30
    str = 'y'
    num = 30
  elseif (keyPress =='a' or keyPress =='A' or keyPress =='ф'or keyPress =='Ф') and (checkBackMove(-30,'x','y')) then
    allMove()
    snake.head.x = snake.head.x - 30
    str = 'x'
    num = -30
  elseif (keyPress =='d'or keyPress =='в' or keyPress =='В' or keyPress =='D')  and (checkBackMove(30,'x','y')) then
    allMove()
    snake.head.x = snake.head.x + 30
    str = 'x'
    num = 30
  else
    allMove()
    snake.head[str]=snake.head[str]+num
  end
end

function keyPause(keyPress)
  if keyPress == nil then
    love.graphics.print('To start press any key',200,200)
    love.graphics.print('version 1.1',500,580)
    end
  end
  
  function refrshJoysteak()
    num = 0
  end
  function checkBackMove(int,string,nochange)
    for i=1,eated do
      if snake.head[string]+int==snake[i][string] and snake.head[nochange] ==snake[i][nochange] then
        return false
      end
    end
    return true
    end