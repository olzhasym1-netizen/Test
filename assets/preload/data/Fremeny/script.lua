local angleshit = 1
local anglevar = 1
local direction = 30
local directshit = 30
function onBeatHit()
    if curBeat > 147 then
		    if curBeat % 2 == 0 then
		    	angleshit = anglevar;
		    else
		    	angleshit = -anglevar;
		    end
		setProperty('boyfriend.angle',angleshit*5)
		doTweenAngle('turn', 'boyfriend', angleshit, stepCrochet*0.002, 'circOut')
	end
end

function onStepHit()

    if curStep > 592 then

        if curStep % 4 == 0 then
	    directshit = direction
	    else
	    directshit = -direction
	    end
	
	    if curStep % 2 == 0 then 
	
	    doTweenY('bounc', 'boyfriend', directshit, stepCrochet*0.002, 'circOut')
	
	    end
    end
end