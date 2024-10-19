dataset = require 'assets/scripts/dataset'
gameDS = {}
function love.load()
    print("loaded")
    gameDS = dataset.parse('game')
    version = dataset.getFromData(gameDS,'ver')
    title = dataset.getFromData(gameDS,'title')
    devMode = dataset.getFromData(gameDS,'devMode')
    love.window.setTitle(title)
    love.mouse.setCursor(love.mouse.newCursor("assets/gfx/cursor.png", 0, 0))
    -- devmode
    if devMode == true then
        print("user is in devmode!")
        love.window.setTitle(love.window.getTitle()..' ('..version..') [DEVELOPER BUILD]')
    end
end