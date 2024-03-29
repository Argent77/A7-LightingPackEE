[![GitHub release (latest by date)](https://img.shields.io/github/v/release/Argent77/A7-LightingPackEE?color=darkred&include_prereleases&label=latest%20release)](https://github.com/Argent77/A7-LightingPackEE/releases/latest)
[![Github downloads (all releases)](https://img.shields.io/github/downloads/Argent77/A7-LightingPackEE/total.svg?color=gold)](https://github.com/Argent77/A7-LightingPackEE/releases)
[![Supported games](https://img.shields.io/static/v1?label=supported%20games&message=BG%3AEE%20%7C%20SoD%20%7C%20BG2%3AEE%20%7C%20EET%20%7C%20IWD%3AEE%20%7C%20PST%3AEE&color=indigo)](https://github.com/Argent77/A7-LightingPackEE)
[![Platform](https://img.shields.io/static/v1?label=platform&message=Windows%20%7C%20macOS%20%7C%20Linux%20%7C%20Project%20Infinity&color=informational)](https://github.com/Argent77/A7-LightingPackEE/releases/latest)
[![Language](https://img.shields.io/static/v1?label=language&message=English%20%7C%20German%20%7C%20Polish&color=limegreen)](https://github.com/Argent77/A7-LightingPackEE)

# Shader Pack: Lighting adjustments for the Enhanced Edition

[![Website](https://img.shields.io/static/v1?label=Website&message=Shader%20Pack&color=ccc7ba&labelColor=eee&style=for-the-badge)](https://argent77.github.io/A7-LightingPackEE/index.html "View Readme")

[![Beamdog Forums](https://img.shields.io/static/v1?label=Discussion&message=Beamdog%20Forums&color=444&labelColor=eee&style=for-the-badge)](https://forums.beamdog.com/discussion/36828 "Beamdog Forums")
&nbsp;&nbsp;
[![SHS Forums](https://img.shields.io/static/v1?label=Discussion&message=SHS%20Forums&color=951514&labelColor=eee&style=for-the-badge)](http://www.shsforums.net/topic/57097-mod-lighting-pack-shader-scripts-for-the-enhanced-edition/ "Spellhold Studios Forums")

## Introduction

The original Infinity Engine games provided options to adjust brightness and contrast which helped a lot, especially in dark dungeons or at night time. Unfortunately these options have been removed from the Enhanced Editions of the games.

This mod provides a way to bring back the means to adjust brightness, contrast and gamma correction. You can choose from a set of predefined lighting configurations or enter the desired values manually.

Since version 3.0 of the mod you can also adjust color temperature as well as hue, saturation and lightness. The latter set of options have been marked as "Advanced Settings" as they are useful only in specific cases.

To get a general idea of how each setting looks like compared to the original, open the [Readme](https://argent77.github.io/A7-LightingPackEE/index.html) or visit either topic on [Spellhold Studios Forums](http://www.shsforums.net/topic/57097-mod-lighting-pack-shader-scripts-for-the-enhanced-edition/) or [Beamdog Forums](https://forums.beamdog.com/discussion/36828).

**Note:** Changes made by this mod will not be visible if you select "Alternative renderer" in the graphics options of the games.


## Installation

This mod uses WeiDU for the installation. To install it, simply execute the file `setup-LightingPack.exe` (or your OS-specific equivalent) and follow the instructions on screen.

If you plan to re-install the shader scripts with different settings, it is highly recommended to install this mod as late as possible. For modifying the scripts manually see chapter 5.

**Important:** You need BG:EE v1.2 or higher to see any effect!


## Uninstallation & Re-installation

Simply run `setup-LightingPack.exe` again and follow the instructions on screen.


## Compatibility & Troubleshooting

This mod attempts to make as few as possible changes to the script files to retain max. compatibility with other mods that affect the respective shader scripts. There is a small chance that this mod doesn't work correctly if other mods have made incompatible changes to the script files. In that case you have to install this mod first.

When modifying shader files manually, there is a chance that it will introduce errors that may cause the game to be unplayable. If you see a black screen or garbled pixels when you start up the game, press Alt+F4 or the respective default shortcut on your OS to quit the game and fix the error. If you are unable to repair the files manually, you can re-install the mod at anytime.


## How to modify lighting values after installation?

If you want to change one or more settings after the mod has been installed, you can find the respective files (see below) in the override folder of your game installation.

Shader files are simple text files. To adjust the brightness, contrast and gamma correction values to your needs, open the respective file in your text editor (e.g. Notepad) and modify the variables labeled as 'brightness', 'contrast' and 'gamma' located in the upper section of each script. The shader files contain short comments on how to set the values correctly. You should set the variables in all three shader files to the same amount for best results.

The same applies to color temperature as well as the advanced settings of hue, saturation and lightness.

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
fpSprite.GLSL Used for sprite outlines.
```

Additional shader files since game engine v2.1:
```
fpseam.GLSL   Used for map background.
```


## Copyright Notice

The mod "Shader Pack: Lighting adjustments for the Enhanced Edition" is licensed under the [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).
