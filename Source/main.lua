import "CoreLibs/graphics"

local gfx = playdate.graphics
local frames = assert(gfx.imagetable.new("images/model/Bird"), "Could not load sprite sheet")

function playdate.update()
    local angle = playdate.getCrankPosition()
    local frame = math.floor(angle / 360 * #frames) + 1

    gfx.clear(gfx.kColorWhite)
    frames:getImage(frame):drawCentered(200, 120)
end
