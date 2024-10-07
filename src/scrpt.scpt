
# PART 1
# Create select dropdown of window sizes and capture user selection
set windowSizeOptions to {"2560x1440", "2512x1413", "1920x1080", "1600x900", "1366x768", "1280x720"}
set selectedSizeOption to choose from list windowSizeOptions with prompt "Select window size" default items {"1920x1080"}

# If 'Cancel' button is clicked on, exit program
if selectedSizeOption is false then
	error number -128
end if

# PART 2
# Calculate the resize dimentions
set the text item delimiters to "x"
set {appWidth, appHeight} to {text item 1, text item 2} of item 1 of the selectedSizeOption

tell application "Finder"
	set screenResolution to bounds of window of desktop
end tell
set {screenWidth, screenHeight} to {item 3, item 4} of screenResolution

set yAxis to (screenHeight - appHeight) / 2 as integer
set xAxis to (screenWidth - appWidth) / 2 as integer

# PART 3
# Get active window while ignoring the resize window app
tell application "System Events"
	set frontmostProcess to first process where it is frontmost
	set visible of frontmostProcess to false
	repeat while (frontmostProcess is frontmost)
		delay 0.2
	end repeat
	set secondFrontmostProcess to name of first process where it is frontmost
	set frontmost of frontmostProcess to true
end tell
set activeApp to secondFrontmostProcess

# PART 4
# Pefrom the app resize
tell application "System Events"
	tell application process activeApp
		activate
		reopen
		set frontWindow to the first window
		set position of frontWindow to {xAxis, yAxis}
		set size of frontWindow to {appWidth, appHeight}
	end tell
end tell
