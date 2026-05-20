local bruh = true
local alpha = true

function onCreate()
    makeLuaSprite('bg tv', 'bg tv', -540, -725)
    addLuaSprite('bg tv', false)

    makeLuaSprite('layeralt', 'stages/layeralt', 0, 0)
    addLuaSprite('layeralt', true)
scaleObject('layeralt', 2, 2);
end

