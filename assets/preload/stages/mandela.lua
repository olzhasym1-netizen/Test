function onCreate()
    makeLuaSprite('room', 'stages/mandela',-1200,-950)
    addLuaSprite('room',false) 
    setLuaSpriteScrollFactor('room', 1, 1)
        scaleObject('room', 1.5, 1.5)
        
        close(true);
end