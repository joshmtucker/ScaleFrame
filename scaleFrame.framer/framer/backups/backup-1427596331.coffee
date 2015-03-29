module = require "scaleFrame"

background = new BackgroundLayer
	backgroundColor: "#75B5FF"
	
container = new Layer
	width: 350
	height: 350
	backgroundColor: "#78FCEA"
	
container.center()
	
scaledLayer = new Layer
	x: 125
	y: 145
	width: 150
	height: 150
	backgroundColor: "#FCB978"
	superLayer: container
	

print module.scaleFrame(scaledLayer, true)
print module.scaleFrame(scaledLayer, false)