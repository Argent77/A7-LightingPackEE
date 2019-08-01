Opcje dostosowywania Shader Pack: Lightning dla Edycji Rozszerzonych
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Version:      2.4
Author:       Argent77
Download:     http://www.shsforums.net/files/file/1080-lighting-pack-shader-scripts-for-the-enhanced-edition/
              https://github.com/Argent77/A7-LightingPackEE/releases/latest
Discussion:   http://www.shsforums.net/topic/57097-mod-lighting-pack-shader-scripts-for-the-enhanced-edition/
              https://forums.beamdog.com/discussion/36828/mod-lighting-pack-for-the-enhanced-edition


Wstęp
~~~~~

Oryginalne wersje gier opartych na silniku Infinity Engine posiadały opcje korygowania jasności i kontrastu, które były niezwykle przydatne, zwłaszcza w ciemnych lokacjach lub w nocy. Niestety opcje te zostały usunięte w Edycjach Rozszerzonych tych gier.

Mod ten przywraca możliwość kontroli poziomu jasności, kontrastu i korekcji gamma. 
Możesz wybrać opcję z zestawu predefiniowanych konfiguracji oświetlenia lub wprowadzić pożądane wartości ręcznie.

Jeśli chcesz mieć ogólny pogląd jak dane ustawienia mają się do tych oryginalnych, wejdź w folder preview tego moda i otwórz przy pomocy dowolnej przeglądarki graficznej lub internetowej plik o nazwie "lighting_preview.jpg".

Uwaga: Zmiany dokonane przez tą modyfikację nie będą widoczne, jeśli w opcjach graficznych gry wybierzesz opcję "Alternatywny renderer". 


Instalacja
~~~~~~~~~~

Mod ten wykorzystuje WeiDU podczas instalacji. Aby go zainstalować uruchom po prostu plik setup-LightingPack.exe (lub jego odpowiednik dla systemu OS), a następnie kieruj się instrukcjami pojawiającymi się na ekranie.

Jeżli planujesz przeinstalowanie skryptów shadera przy użyciu innych ustawień, jest wysoce wskazane, abyś zainstalował ten mod najpóźniej, jak to możliwe. W rozdziale 5 znajdziesz informacje na temat ręcznej modyfikacji skryptów.

Ważne: Aby ujrzeć efekty działania moda musisz mieć zainstalowane BG:EE w wersji 1.2 lub wyższej! 


Odinstalowywanie i Przeinstalowywanie
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Uruchom po prostu plik setup-LightingPack.exe i ponownie kieruj się wskazówkami pojawiającymi się na ekranie.


Kompatybilność i Rozwiązywanie problemów
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Mod ten ma w zamierzeniu dokonywać jak najmniej zmian w plikach skryptów, tak aby zachować maksymalną kompatybilność z innymi modami ingerującymi w odpowiednie skrypty shaderów. Istnieje niewielka szansa, że mod ten nie będzie działał prawidłowo, jeśli inne mody dokonały niekompatybilnych zmian w plikach skryptów. W takim przypadku, zainstaluj ten mod jako pierwszy.

Ręczna modyfikacja shaderów może spowodować wystąpienie błędów, które spowodują, że gra stanie się niegrywalna. 
Jeżeli po uruchomieniu gry ujrzysz czarny ekran lub zniekształcone piksele, wciśnij Alt+F4 lub odpowiadający tej kombinacji skrót w przypadku systemu OS, aby wyjść z gry i naprawić błąd. 
Jeżeli nie będziesz w stanie ręcznie naprawić plików, możesz w dowolnej chwili przeinstalować mod. 


Jak modyfikować wartości oświetlenia po instalacji? 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Jeśli zechcesz zmienić któreś z ustawień już po zainstalowaniu tego moda, odpowiednie pliki (patrz niżej) znajdziesz w folderze override.

Pliki shaderów to zwykłe pliki tekstowe. Aby dostosować do swoich potrzeb poziom jasności, kontrastu lub korekcji gamma otwórz odpowiednie pliki w dowolnym edytorze tekstowym (np. Notepadzie) i zmodyfikuj zmienne oznaczone jako "jasność", "kontrast" i "gamma", znajdujące się w górnej części każdego skryptu. Każdy z plików shaderów zawiera krótki komentarz wyjaśniający jak ustawić odpowiednie wartości. W celu uzyskania najlepszych rezultatów zmienne we wszystkich trzech plikach shaderów powinny mieć tę samą wartość.

Zastosowanie plików shaderów w grze:
fpDraw.GLSL   Wykorzystywany we wszystkich kolorowych obszarach ekranu, z wyjątkiem filmów. 
fpTone.GLSL   Wykorzystywany we wszystkich obszarach ekranu o różnym stopniu szarości (np. przy nieaktywnych przyciskach czy efekcie zatrzymania czasu). 
fpYUV.GLSL    Wykorzystywany podczas odtwarzaniu filmów.
fpYUVGRY.GLSL Wykorzystywane dla wyjścia wideo w trybie odcieni szarości.

Dodatkowe pliki shaderów dla wersji silnika v2.0:
fpFont.GLSL   Używane do tekstów w grze.
fpSelect.GLSL Używane do podświetlania sprite'ów.
fpSprite.GLSL Używane do obramowania sprite'ów.

Dodatkowe pliki shaderów dla wersji silnika v2.1:
fpseam.GLSL   Wykorzystywany do tła map.


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
