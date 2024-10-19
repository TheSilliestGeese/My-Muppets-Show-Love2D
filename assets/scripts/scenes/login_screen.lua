local login_screen = {}

Paths = require 'assets/scripts/Paths'

--objects

local loading_bar = nil

function login_screen:enter()
    loading_bar = love.graphics.newImage(Paths.image("menu/loading_bar_full"))
end


function login_screen:draw()
    love.graphics.draw(loading_bar, love.graphics.getWidth() / 2, love.graphics.getHeight() / 2, 0, 1, 1, loading_bar:getWidth()/2, loading_bar:getHeight()/2)
end

return login_screen