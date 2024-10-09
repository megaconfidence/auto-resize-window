# Auto Resize Window

https://user-images.githubusercontent.com/17744578/174408067-a1681e21-26fb-4b8f-8656-d9df4a9d9607.mp4

> This only works on Mac OS

This is an AppleScript app that automatically resizes the active window to various 16:9 aspect ratios. This is useful for automatically resizing an app window before a screencast or screen share.

## Usage

1. Download the app zip file [here](https://github.com/megaconfidence/auto-resize-window/raw/main/downloads/Auto%20Resize%20Window.zip)
1. Extract the app from the zip file
1. Move the app to your `Applications` folder
1. Open up Spotlight (`cmd+spacebar`) and type in `Auto Resize Window`
1. Hit enter
1. Select a resolution and profit

## Important ⚠️

You will need to give this application access to `System Events` and `Finder` on the first run. On macOs Ventura (13.1) and higher, go to `System Settings` > `Privacy & Security` > `Security` then allow _Auto Resize Window_ to run

You can always take a look at the source code [here](src/scrpt.scpt) to be sure this program is not malicious.

|                                                   |                                          |
| :-----------------------------------------------: | :--------------------------------------: |
| ![Permission one](src/images/System%20Events.png) | ![Permission two](src/images/Finder.png) |

## Known Issues

- The app currently can't resize apps that don't support AppleScript i.e `Electron` apps.
