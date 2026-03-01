local music = love.audio.newSource("music.mp3", "stream")
local sfx = love.audio.newSource('charlo.wav', 'static')
function love.load()
	love.graphics.setBackgroundColor(0.5,0.5,0.5)
	love.window.setTitle('charlo')
	love.window.setMode(360, 360)
    music:setLooping(true)
    music:play()

    image = love.graphics.newImage("charlo.png")
end

function love.draw()
	local windowWidth = love.graphics.getWidth()
    local windowHeight = love.graphics.getHeight()

    local scaleX = windowWidth / image:getWidth()
    local scaleY = windowHeight / image:getHeight()

    love.graphics.draw(image, 0, 0, 0, scaleX, scaleY)
end

function love.mousepressed(x, y, button)
    if button == 1 then
		sfx:play()
        love.window.showMessageBox(
            "hi i'm charlo",
            "hi i'm charlo",
			{"hi charlo"},
            "info"
        )
    end
end