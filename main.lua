dataset = require 'assets/scripts/dataset'
roomy = require 'assets/scripts/roomy'
gameDS = {}

function love.load()
    print("loaded")
    
    gameDS = dataset.parse('game')
    version = dataset.getFromData(gameDS,'ver')
    title = dataset.getFromData(gameDS,'title')
    devMode = dataset.getFromData(gameDS,'devMode')

    love.window.setTitle(title)
    love.mouse.setCursor(love.mouse.newCursor("assets/gfx/cursor.png", 0, 0))

    
    if devMode == true then
        -- devmode
        print("user is in devmode!")
        love.window.setTitle(love.window.getTitle()..' ('..version..') [DEVELOPER BUILD]')
    end
end