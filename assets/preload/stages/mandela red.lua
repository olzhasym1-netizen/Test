function onCreate()
    makeLuaSprite('room', 'stages/mandela red',-1170,-950)
    addLuaSprite('room',false) 
    setLuaSpriteScrollFactor('room', 1, 1)
        scaleObject('room', 1.7, 1.7);

    makeLuaSprite('tabl', 'stages/table',450,100)
    addLuaSprite('tabl',false) 
    setLuaSpriteScrollFactor('tabl', 0.85, 0.85)
        scaleObject('tabl', 2, 2);

end