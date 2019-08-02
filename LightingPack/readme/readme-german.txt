Shader Pack: Helligkeitseinstelungen für die Enhanced Editions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Version:      2.4
Autor:        Argent77
Download:     http://www.shsforums.net/files/file/1080-lighting-pack-shader-scripts-for-the-enhanced-edition/
              https://github.com/Argent77/A7-LightingPackEE/releases/latest
Diskussion:   http://www.shsforums.net/topic/57097-mod-lighting-pack-shader-scripts-for-the-enhanced-edition/
              https://forums.beamdog.com/discussion/36828/mod-lighting-pack-for-the-enhanced-edition


Übersicht
~~~~~~~~~

Die Originalspiele verfügten über Optionen, um Helligkeit und Kontrast einzustellen. Das war in vielen Fällen sehr
hilfreich, wie in Verließen oder zur Nachtzeit. Diese Option wurde in den Enhanced Editions leider entfernt.

Diese Mod bietet eine Möglichkeiten an, um Veränderungen von Helligkeit, Konstrast oder Gamma (und einige weitere
Einstellungen) zurückzubringen. Man kann zwischen einer Reihe von Voreinstellungen wählen oder die gewünschten Werte
manuell festlegen.

Eine Übersicht über die gängigsten Voreinstellungen von Helligkeit, Kontrast und Gamma kann man in der Grafikdatei
"lighting_preview.jpg" betrachten, die sich im "preview"-Ordner dieser Mod befindet.

Seit Version 3.0 der Mod kann man zusätzlich sowohl Farbtemperatur als auch Farbwert, Sättigung und Hellwert
einstellen. Die letzteren Optionen sind eher in Spezialfällen sinnvoll, daher sind sie unter der Gruppe
"Erweiterte Einstellungen" zu finden.

Hinweis: Einstellungen durch diese Mod wirken sich nur aus, wenn die Spieloption "Alternativer Renderer" im
         Grafikabschnitt nicht aktiviert wurde.


Installation
~~~~~~~~~~~~

Dies ist eine WeiDU Mod. Das bedeutet, sie ist sehr einfach zu installieren. Entpackt die heruntergeladene
Zipdatei in das Spieleverzeichnis und startet entweder "setup-LightingPack.exe" (Windows) oder
"setup-LightingPack.command" (macOS). Folgt den Anweisungen des Programms und die Mod ist startbereit.

Um die Shaderskripte im Nachhinein unproblematisch neu zu installieren, sollte man diese Mod nach allen anderen 
Mods installieren. Alternativ kann man die Skripte auch per Hand anpassen. Genaueres dazu im Kapitel 
"Helligkeitswerte manuell verändern" weiter unten.

Wichtig: Es wird mindestens BG:EE v1.2 oder höher benötigt!

Um die Mod zu deinstallieren, startet "setup-LightingPack.exe" oder "setup-LightingPack.command" und folgt
den Anweisungen.


Kompatibilität und Fehlersuche
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Diese Mod versucht die Skriptdateien so wenig wie möglich zu verändern, um maximale Kompatibilität mit dem Spiel und
anderen Mods zu gewährleisten. Allerdings gibt es immer eine kleine Chance, dass die Installation fehlschlägt. In
diesem Fall sollte man die Mod so früh wie möglich zu installieren, um Veränderungen durch andere Mods auszuschließen.

Falls Shaderskripte manuell angepass werden, kann es immer mal zu kleinen Syntaxfehlern kommen, welche das Spiel
unspielbar machen.
Falls nach dem Spielstart nur ein schwarzer Bildschirm zu sehen ist, oder die Grafik verzerrt bzw. mit falschen Farben
dargestellt werden, dann drückt die Tastenkombination Alt+F4 (bzw. die Standardkombination Eures Betriebssystems),
um das Spielende zu erzwingen.
Wenn eine manuelle Korrektur der Shaderskripte nicht möglich ist, kann man durch eine Neuinstallation der Mod diese
Fehler jederzeit beheben.


Helligkeitswerte manuell verändern
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Falls Ihr nach der Installation der Mod einen oder mehrere Werte manuell verändern wollt, dann könnt Ihr die 
entsprechenden Dateien (siehe weiter unten) im Override-Ordner des Spiels finden.

Shaderdateien sind einfache Textdateien. Um die Werte für Helligkeit, Kontrast und Gammakorrektur zu ändern, 
öffnet die entsprechende Datei im Texteditor. Ein einfacher Texteditor ist ausreichend, allerdings hilft die 
Syntaxhervorhebung eine erweiterten Texteditors, wie z.B. Notepad++ bei der Fehlersuche. Sucht nach den Variablen 
"brightness", "contrast" und "gamma". Sie sollten am Anfang des Skripts stehen. Jeder Wert ist mit einem Kommentar 
versehen, der den Wertebereich und Neutralwert der jeweiligen Option angibt. Ihr solltet in allen Shaderdateien 
die selben Werte verwenden.

Genauso kann mit den Werten für Farbtemperatur (kelvin) oder den erweiterten Einstellungen Farbwert (hue),
Sättigung (saturation) und Hellwert (lightness) verfahren.

Shaderdateien und ihre Verwendung im Spiel:
fpDraw.GLSL     Für alle farbigen Gebiete auf dem Bildschirm, außer für Videos.
fpTone.GLSL     Für alle Graustufeneffekte auf dem Bildschirm (z.B. bei Pause oder Zeitstopp).
fpYUV.GLSL      Für die Videoausgabe.
fpYUVGRY.GLSL   Für Videoausgabe in Graustufen.

Zusätzliche Shaderdateien ab Spielversion 2.0:
fpFont.GLSL     Für Spieltexte.
fpSelect.GLSL   Für Hervorhebungen von Sprites.
fpSprite.GLSL   Für verstärkte Umrisse um Charaktere.

Shaderdateien ab Spielversion 2.1:
fpseam.GLSL     Für Kartenhintergründe.


Credits
~~~~~~~

Coding and testing: Argent77

Polish translation: Cahir


Copyright Notice
~~~~~~~~~~~~~~~~

The mod "Shader Pack: Lighting adjustments for the Enhanced Edition" is licensed under the "Creative Commons
Attribution-ShareAlike 4.0 International License" (http://creativecommons.org/licenses/by-sa/4.0/).


Version History
~~~~~~~~~~~~~~~

v3.0 (2019-xx-xx)
- Added settings: Color Temperature
- Added advanced settings: Hue/Saturation/Lightness
- Added proper Credits and Copyright sections to the readme
- Added German translation
- Internal restructuring

v2.4 (2016-04-15)
- Added support for Enhanced Edition patch v2.1
- Improved validation of numbers in manual input subcomponent

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
