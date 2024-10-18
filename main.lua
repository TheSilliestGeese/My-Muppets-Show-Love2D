dataset = require 'assets/scripts/dataset'
gameDS = {}

function love.load()
    gameDS = dataset.parse('game')
    version = dataset.getFromData(gameDS,'ver')
    title = dataset.getFromData(gameDS,'title')
    devMode = dataset.getFromData(gameDS,'devMode')
    love.window.setTitle(title..' ('..version..')')
    love.window.setTitle(love.window.getTitle()..' [DEVELOPER BUILD]')
end

