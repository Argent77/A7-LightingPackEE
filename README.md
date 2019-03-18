# Shader Pack: Lighting adjustments for the Enhanced Edition

**Author:** Argent77


## Introduction

The original Infinity Engine games provided options to adjust brightness and contrast which 
helped a lot, especially in dark dungeons or at night time. Unfortunately these options have 
been removed from the Enhanced Editions of the games.

This mod provides a way to bring back the means to adjust brightness, contrast and gamma correction.
You can choose from a set of predefined lighting configurations or enter the desired values manually.

If you want to get a general idea on how each setting looks compared to the original, go into the 
preview folder of this mod and open the file "lighting_preview.jpg" with your graphics viewer 
or browser.

**Note:** Changes made by this mod will not be visible if you select "Alternative renderer" in the 
      graphics options of the games.


## Installation

This mod uses WeiDU for the installation. To install it, simply execute the file `setup-LightingPack.exe` 
(or your OS-specific equivalent) and follow the instructions on screen.

If you plan to re-install the shader scripts with different settings, it is highly recommended 
to install this mod as late as possible. For modifying the scripts manually see chapter 5.

**Important:** You need BG:EE v1.2 or higher to see any effect!


## Uninstallation & Re-installation

Simply run `setup-LightingPack.exe` again and follow the instructions on screen.


## Compatibility & Troubleshooting

This mod attempts to make as few as possible changes to the script files to retain 
max. compatibility with other mods that affect the respective shader scripts.
There is a small chance that this mod doesn't work correctly if other mods have 
made incompatible changes to the script files. In that case you have to install this 
mod first.

When modifying shader files manually, there is a chance that it will introduce errors that 
may cause the game to be unplayable. 
If you see a black screen or garbled pixels when you start up the game, press Alt+F4 or the 
respective default shortcut on your OS to quit the game and fix the error.
If you are unable to repair the files manually, you can re-install the mod at anytime.


## How to modify lighting values after installation?

If you want to change one or more settings after the mod has been installed, you can find 
the respective files (see below) in the override folder of your game installation.

Shader files are simple text files. To adjust the brightness, contrast and gamma correction 
values to your needs, open the respective file in your text editor (e.g. Notepad) and modify 
the variables labeled as 'brightness', 'contrast' and 'gamma' located in the upper section of 
each script. The shader files contain short comments on how to set the values correctly. 
You should set the variables in all three shader files to the same amount for best results.

Usage of shader files in the game:
```
fpDraw.GLSL   Used for every colored areas of the screen, except for videos.
fpTone.GLSL   Used for grayscaled areas of the screen (e.g. disabled buttons or time stop effect).
fpYUV.GLSL    Used for video output.
fpYUVGRY.GLSL Used for grayscaled video output.
```

Additional shader files since game engine v2.0:
```
fpFont.GLSL   Used for game text.
fpSelect.GLSL Used for sprite highlighting.
fpSprite.GLSL Used for the sprite outlines.
```

Additional shader files since game engine v2.1:
```
fpseam.GLSL   Used for map background.
```


## Copyright Notice

The mod "Shader Pack: Lighting adjustments for the Enhanced Edition" is licensed under the [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).
