json = require 'assets/scripts/json'

local dataset = {}

function dataset.parse(data)
    return json.decode(love.filesystem.read('assets/data/'..data..'.json'))
end

function dataset.getFromData(set, var)
    if set and set[var] then
        response = set[var]
    else
        response = false
        print(var..' is not found in the DataSet!')
    end
    return response
end

return dataset