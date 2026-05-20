function onCreate()
    makeLuaSprite('room', 'stages/mandela',-700,-600)
    addLuaSprite('room',false) 
    setLuaSpriteScrollFactor('room', 1, 1)
        scaleObject('room', 1.8, 1.8);

    makeLuaSprite('tabl', 'stages/table',450,100)
    addLuaSprite('tabl',false) 
    setLuaSpriteScrollFactor('tabl', 0.95, 0.95)
        scaleObject('tabl', 2, 2);

    setObjectOrder('tabl', getObjectOrder('room') + 5)


end