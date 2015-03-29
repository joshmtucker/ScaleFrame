exports.scaleFrame = (layer, screenFrame) ->

	# ScreenFrame coordinates are specified
	if screenFrame is false
		layerX = layer.x
		layerY = layer.y
	else if screenFrame is true
		layerX = layer.screenFrame.x 
		layerY = layer.screenFrame.y
	else
		print "ERROR: Please specify coordinate system: true = screenFrame, false = default"
		return

	# Adjustments for scale and scale[X/Y]
	scale = 
		x: layer.scale * layer.scaleX
		y: layer.scale * layer.scaleY

	# Adjustments
	adjusted = 
		width: layer.width * scale.x
		height: layer.height * scale.y
		originX: layer.width * layer.originX
		originY: layer.height * layer.originY

	# Final properties
	properties =
		x: layerX + adjusted.originX - (adjusted.width/2)
		y: layerY + adjusted.originY - (adjusted.height/2)
		minX: layerX + adjusted.originX - (adjusted.width/2)
		minY: layerY + adjusted.originY - (adjusted.height/2)
		midX: (layerX + adjusted.originX - (adjusted.width/2)) + (adjusted.width/2)
		midY: (layerY + adjusted.originY - (adjusted.height/2)) + (adjusted.height/2)
		maxX: layerX + adjusted.originX - (adjusted.width/2) + adjusted.width
		maxY: layerY + adjusted.originY - (adjusted.height/2) + adjusted.height
		width: adjusted.width
		height: adjusted.height


	return properties