-----------------------------------------------------------------------------------------
--
-- main.lua
-- Created by: Wendi Yu
-- Created on: Feb 2018
--
--how to calculate the area and circumference of circle
-----------------------------------------------------------------------------------------


local instruction = display.newText("Enter the number: ", 524, 300, native.systemFont, 100)

local lengthOfRadius = display.newText("Radius(r): ", 524, 500, native.systemFont, 90)
local lengthOfRadiusTextField = native.newTextField( display.contentCenterX - 500, display.contentCenterY - 100, 600, 90 )
lengthOfRadiusTextField.id = "length Radius r textField"


local explaination = display.newText("Show the circumference and the area of circle", 924, 1000, native.systemFont, 90)

local enterButton = display.newImageRect("./assets/sprites/enterButton.png", 500, 157 )
enterButton.x = display.contentCenterX + 500
enterButton.y = display.contentCenterY - 100
enterButton.id = "enter button"


local function calculateButtonTouch( event )
	-- it is not perfect, but we will make it better soon
	local lengthOfRadius
	local lengthOfDiameter
	local circumferenceOfCircle
	local areaOfCircle

	lengthOfRadius = lengthOfRadiusTextField.text
	lengthOfDiameter = 2*(lengthOfRadius)
	circumferenceOfCircle = 3.14*(lengthOfDiameter)
	areaOfCircle = 3.14*(lengthOfRadius)^2
	explaination.text = " Area: " .. areaOfCircle .. "   Circumference:" .. circumferenceOfCircle 
	print( "The area is", areaOfCircle, "The circumference is:", circumferenceOfCircle )
	
	return true

end

enterButton:addEventListener("touch", calculateButtonTouch)