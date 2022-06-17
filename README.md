# Auto Resize Window
> This only works on Mac OS

https://user-images.githubusercontent.com/17744578/174408067-a1681e21-26fb-4b8f-8656-d9df4a9d9607.mp4



This is an AppleScrip app that automatically resizes the active window to various 16:9 aspect ratios. This is useful for automatically resizing an app window before a screencast or screen share.

This was written in AppleScrip and only works on Mac OS. The supported window sizes are:
* 2512x1413 
* 1920x1080 
* 1600x900 
* 1280x720 
* 992x558

## Usage
1. Download the app zip file from [here](https://github.com/cokoghenun/auto-resize-window/raw/main/Auto%20Resize%20Window.zip)
1. Extract the app from the zip file
1. Move the app to your `Applications` folder
1. Open up Spotlight (`cmd+spacebar`) and type in `Auto Resize Window`
1. Hit enter
1. Select a resolution and profit

## Important ⚠️
You will need to give this application access to `System Events` and `Finder` on the first run.

You can take a look at the source script [here](src/scrpt.scpt) to be sure.

| | |
|:-------------------------:|:-------------------------:|
|![Permission one](src/images/System%20Events.png)|![Permission two](src/images/Finder.png)|

## Known Issues
* The app currently can't resize `Electron` based apps i.e VScode
