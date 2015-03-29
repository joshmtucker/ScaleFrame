module = require "scaleFrame"

background = new BackgroundLayer
	backgroundColor: "#C8FFF7"
	
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
	backgroundColor: "#2EB6A4"
	opacity: .5
	superLayer: container

# True = screenFrame coordinates, false = default	
print module.scaleFrame(scaledLayer, true)
print module.scaleFrame(scaledLayer, false)