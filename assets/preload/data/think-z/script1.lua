function onCreate()
    makeLuaSprite('layeralt', 'stages/layeralt', -410, -700)
    setObjectOrder('layeralt', getObjectOrder('layerNORMAL') + 1)
    setLuaSpriteScrollFactor('layeralt', 1, 1)
	scaleObject('layeralt', 3.2, 3.2);
        setProperty('layeralt.visible', false)

    makeLuaSprite('bg alt', 'stages/bg alt', -410, -700)
    setObjectOrder('bg alt', getObjectOrder('bg') - 1)
    setLuaSpriteScrollFactor('bg alt', 1, 1)
	scaleObject('bg alt', 3.2, 3.2);
        setProperty('bg alt.visible', false)

    makeLuaSprite('bg tv', 'stages/bg tv', -410, -700)
    setObjectOrder('bg tv', getObjectOrder('bg alt') + 1)
    setLuaSpriteScrollFactor('bg tv', 1, 1)
	scaleObject('bg tv', 3.2, 3.2);
        setProperty('bg tv.visible', false)

    makeAnimatedLuaSprite('blue screen', 'stages/blue screen', -800, -1200)
    setObjectOrder('blue screen', getObjectOrder('static') + 1)
    setLuaSpriteScrollFactor('blue screen', 1, 1)
	scaleObject('blue screen', 4, 4);
        setProperty('blue screen.visible', false)

    makeAnimatedLuaSprite('static', 'stages/static', -145, 200)
    setObjectOrder('static', getObjectOrder('blue screen') + 1)
    setLuaSpriteScrollFactor('static', 1, 1)
	scaleObject('static', 1.4, 1.4);
        setProperty('static.visible', false)

end

function onBeatHit()
	if curBeat == 495 then -- around 3:02
        addLuaSprite('layeralt', true);
        setProperty('layeralt.visible', true)
	removeLuaSprite('layerNORMAL', true)

        addLuaSprite('bg alt', true);
        setProperty('bg alt.visible', true)
	removeLuaSprite('bg', true)
	removeLuaSprite('gray', true)

	setProperty('ThinkA.y', getProperty('ThinkA.y', -200)) 

	end

	if curBeat == 561 then -- around 3:21
        addLuaSprite('bg tv', false);
        setProperty('bg tv.visible', true)
	setProperty('bg alt.visible', false)

        end

function onStepHit()
	if curStep == 2752 then -- around 3:50
        setProperty('bg alt.visible', true)
	removeLuaSprite('bg tv', true)

	end

	if curStep == 3008 then -- around 4:12
        luaSpriteAddAnimationByPrefix('blue screen', 'blue screen', 'blue screen', 24, true);
        setProperty('blue screen.visible', true)
	removeLuaSprite('layerNORMAL', true)
	removeLuaSprite('bg alt', true)
	removeLuaSprite('layeralt', true)
	removeLuaSprite('ThinkA2', true)
	removeLuaSprite('ThinkJalt', true)

	luaSpriteAddAnimationByPrefix('static', 'static', 'static', 24, true);
        setProperty('static.visible', true)

	end

    end

end