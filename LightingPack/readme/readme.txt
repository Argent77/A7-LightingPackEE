Shader Pack: Lighting adjustments for the Enhanced Edition
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Version:       2.3
Author:        argent77
Download from: http://www.shsforums.net/files/file/1080-lighting-pack-shader-scripts-for-the-enhanced-edition/


1. Introduction
~~~~~~~~~~~~~~~

The original Infinity Engine games provided options to adjust brightness and contrast which 
helped a lot, especially in dark dungeons or at night time. Unfortunately these options have 
been removed from the Enhanced Editions of the games.

This mod provides a way to bring back the means to adjust brightness, contrast and gamma correction.
You can choose from a set of predefined lighting configurations or enter the desired values manually.

If you want to get a general idea on how each setting looks compared to the original, go into the 
preview folder of this mod and open the file "lighting_preview.jpg" with your graphics viewer 
or browser.

Note: Changes made by this mod will not be visible if you select "Alternative renderer" in the 
      graphics options of the games.


2. Installation
~~~~~~~~~~~~~~~

This mod uses WeiDU for the installation. To install it, simply execute the file 
setup-LightingPack.exe (or your OS-specific equivalent) and follow the instructions on screen.

If you plan to re-install the shader scripts with different settings, it is highly recommended 
to install this mod as late as possible. For modifying the scripts manually see chapter 5.

Important: You need BG:EE v1.2 or higher to see any effect!


3. Uninstallation & Re-installation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Simply run setup-LightingPack.exe again and follow the instructions on screen.


4. Compatibility & Troubleshooting
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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


5. How to modify lighting values after installation?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you want to change one or more settings after the mod has been installed, you can find 
the respective files (see below) in the override folder of your game installation.

Shader files are simple text files. To adjust the brightness, contrast and gamma correction 
values to your needs, open the respective file in your text editor (e.g. Notepad) and modify 
the variables labeled as 'brightness', 'contrast' and 'gamma' located in the upper section of 
each script. The shader files contain short comments on how to set the values correctly. 
You should set the variables in all three shader files to the same amount for best results.

Usage of shader files in the game:
fpDraw.GLSL   Used for every colored areas of the screen, except for videos.
fpTone.GLSL   Used for grayscaled areas of the screen (e.g. disabled buttons or time stop effect).
fpYUV.GLSL    Used for video output.
fpYUVGRY.GLSL Used for grayscaled video output.

Additional shader files since game engine v2.0:
fpFont.GLSL   Used for game text.
fpSelect.GLSL Used for sprite highlighting.
fpSprite.GLSL Used for the sprite outlines.



6. Version History
~~~~~~~~~~~~~~~~~~

v2.3 (2016-04-01)
- Added support for Enhanced Edition patches v2.0
- Added check to prevent modifying files more than once

v2.2 (2014-12-11)
- Added support for latest BG2:EE update

v2.1 (2014-12-09)
- Fixed an issue regarding semi-transparent pixels

v2.0 (2014-11-09)
- Greatly improved compatibility with third-party mods making changes to the shader files
- Added IWDEE support

v1.1 (2014-01-20)
- Added polish translation (by Cahir)

v1.0 (2014-01-17)
- Initial release
