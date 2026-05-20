function onCreate()
    makeLuaSprite('1pov', 'stages/1pov', -460, -350)
    setObjectOrder('1pov', getObjectOrder('room') + 1)
    setLuaSpriteScrollFactor('1pov', 0, 0)
	scaleObject('1pov', 0.8, 0.8);
        setProperty('1pov.visible', false)

end

function onBeatHit()
	if curBeat == 752 then -- 1pov
        addLuaSprite('1pov', true);
        setProperty('1pov.visible', true)

    end
end