# ScaleFrame
![](https://cloud.githubusercontent.com/assets/6194928/6884244/aa36f0e0-d59b-11e4-99f4-fb2526fef15e.png)
Calculate the properties of a scaled layer using its new dimensions. Since scaling a layer only changes it visually, not physically by its actual property dimensions, this is a great tool! 

# Usage
Put the scaleFrame.coffee file in the /modules folder inside your Framer project. To include in Framer Studio, put the following code at the top of your project:
```coffee
variableName = require "scaleFrame"
```
## Calculate Values
Using the line of code below, pass in your scaled layer and specify true or false.
```coffee
###

TRUE means you want absolute property values (see layer.screenFrame for documentation)
FALSE means you want default property values (relative to superLayer/parent layer if applicable)

###

variableName.scaleFrame(scaledLayer, true)
```
## Properties
Below are the full list of properties that are returned.

> variableName.scaleFrame(scaledLayer, true).
> - x
> - y
> - minX
> - minY
> - midX
> - midY
> - maxX
> - maxY
> - width
> - height

# Example
Download <a href="https://github.com/joshmtucker/ScaleFrame/tree/master/scaleFrame.framer">scaleFrame.framer</a> to see how this module works.




  
