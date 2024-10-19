json = require 'assets/scripts/json'
local dataset = {}
function dataset.parse(data)
    if love.filesystem.read('assets/data/'..data..'.json') then
        parsedData = json.decode(love.filesystem.read('assets/data/'..data..'.json'))
        if parsedData then
            print('parsed '..'assets/data/'..data..'.json as '..love.filesystem.read('assets/data/'..data..'.json'))
            return parsedData
        else
            return {
                error=true
            }
        end
    end
end
function dataset.getFromData(set, var)
    if set and set[var] then
        response = set[var]
    else
        response = "data not found"
        print(var..' is not in the dataset')
    end
    return response
end
return dataset