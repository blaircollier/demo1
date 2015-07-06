
display.setStatusBar( display.HiddenStatusBar )

local physics = require "physics"
physics.start(); physics.pause()

local background = display.newImageRect( "sky.png", display.contentWidth, display.contentHeight )
background.anchorX = 0
background.anchorY = 0
background.x, background.y = 0, 0

function addSean(i) 
   local sean = display.newImageRect( "sean.png", 80, 80)
   sean.x, sean.y = i * 40, 10
   sean.rotation = 15
   physics.addBody( sean, { density=1.0, friction=0.15, bounce=0.5 } )
end

local tara = display.newImageRect( "tara.png", 80, 80)
tara.x, tara.y = 200, 280
tara.rotation = 35
physics.addBody( tara, 'static', { density=1.0, friction=0.15, bounce=0.5 } )

for i = 1,10 do
   addSean(i)
end


physics.start()
