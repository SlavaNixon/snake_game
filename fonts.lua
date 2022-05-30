function createFonts()    
    FontNormal = love.graphics.newFont("font.ttf", 30)
    FontSmall = love.graphics.newFont("font.ttf", 15)
    FontBig = love.graphics.newFont("fontNumber.ttf", 100)
    return FontSmall, FontNormal, FontBig
end