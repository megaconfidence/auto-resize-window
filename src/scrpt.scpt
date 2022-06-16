# PART 1
# Create select dropdown of window sizes and capture user selection
set windowSizeOptions to {"2512x1413", "1920x1080", "1600x900", "1280x720", "992x558"}
set selectedSizeOption to choose from list windowSizeOptions with prompt "Select your favorite fruit:" default items {"2512x1413"}

set the text item delimiters to "x"
set {appWidth, appHeight} to {text item 1, text item 2} of item 1 of the selectedSizeOption

# PART 2
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

# PART 3
# Resize Current Active Window
tell application "Finder"
	set screenResolution to bounds of window of desktop
end tell

set screenWidth to item 3 of screenResolution
set screenHeight to item 4 of screenResolution

tell application activeApp
	activate
	reopen
	set yAxis to (screenHeight - appHeight) / 2 as integer
	set xAxis to (screenWidth - appWidth) / 2 as integer
	set the bounds of the first window to {xAxis, yAxis, appWidth + xAxis, appHeight + yAxis}
end tell