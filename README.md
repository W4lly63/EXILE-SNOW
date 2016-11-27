# EXILE-SNOW v.0.5 - Sounds + effects + SnowMask
Snow script temperature and overcast based

- Temperature based (down to 1 snow --- up to 1 no snow).
- Overcast based (change intensity based to overcast).
- No snow inside buildings .
- Snow Mask system simulation.
- configurable options :snow\fn_settings.sqf
- # v.0.5
- [added] New wind and environment sounds, new system sound for better reality immersion.
- [optimisation] snow mask code.
- # v.0.4
- [added] Snow Mask. Snow mask system add mask in game. Without player have bad visibility, with.... good visibility but if body temperature 
  go to 36 or 35 or less, mask glass  frosty... in fn_settings.sqf is possible setup many option as if u want check if player have   
  glasses defined in array , if want mask only when raining or falling snow, or anytime ... and more for better immersion and reality  experience..
- # v.0.3
- [added] environment sounds to wind like crack tree.
- [solved] bucket visibility.
- [optimisation] code.
- # v.0.2
- [removed] crichets sound and other summer sounds
- [added] sound of winter wind based on real wind power - volume level reduced inside buildings.

Installation

- Open mission\config.cpp , search "class CfgExileCustomCode" and add this line inside class

ExileClient_system_snow_thread_update = "Snow\ExileClient_system_snow_thread_update.sqf";

- Copy folders Snow ,sounds and textures (if exist merge) inside mission folder.
- Copy CfgAmbSounds.hpp, CfgSnowGui.hpp and CfgSnowWind.hpp inside root mission directory
- Copy init.sqf (or merge) inside mission folder.
- Open downloaded description.ext and add RscTitles class and Cfgsound class (or merge) inside mission\description.ext 
- if you use statusbar like [RG]Salutesh bar, join class  RscTitles as defined in statusbar instructions.




# EXILE-SNOW v.0.1 (folder OnlySnow)
Snow script temperature and overcast based

- Temperature based (down to 1 snow --- up to 1 no snow).
- Overcast based (change intensity based to overcast).
- No snow inside buildings .

Installation

open mission 
copy ExileClient_system_snow_thread_update.sqf inside,
Open config.cpp , search "class CfgExileCustomCode" and add this line inside class

ExileClient_system_snow_thread_update = "ExileClient_system_snow_thread_update.sqf";
