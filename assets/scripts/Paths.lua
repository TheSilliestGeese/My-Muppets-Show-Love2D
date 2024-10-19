Paths = {}

function Paths.image(string)
    return 'assets/gfx/'..string..'.png'
end

function Paths.state(string)
    return 'assets/scripts/scenes'..string
end

return Paths