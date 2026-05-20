local bruh = true
local alpha = true

function onCreate()
    makeLuaSprite('gray', 'stages/gray', -300, -300)
    addLuaSprite('gray')
    setProperty('gray.alpha', 0.4)

    makeLuaSprite('bg', 'bg', -540, -725)
    addLuaSprite('bg', false)

    makeLuaSprite('layeralt', 'stages/layeralt', 0, 0)
    addLuaSprite('layeralt', true)
scaleObject('layeralt', 2, 2);
end

