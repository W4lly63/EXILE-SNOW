# EXILE-SNOW v.0.3 - Sounds + effects(TODO)
Snow script temperature and overcast based

- Temperature based (down to 1 snow --- up to 1 no snow).
- Overcast based (change intensity based to overcast).
- No snow inside buildings .
# v.0.3
- [added] environment sounds to wind like crack tree.
- [solved] bucket visibility.
- [optimisation] code.
# v.0.2
- [removed] crichets sound and other summer sounds
- [added] sound of winter wind based on real wind power - volume level reduced inside buildings.

Installation

- Open mission\config.cpp , search "class CfgExileCustomCode" and add this line inside class

ExileClient_system_snow_thread_update = "Snow\ExileClient_system_snow_thread_update.sqf";

- Copy folders Snow and sounds (if exist merge) inside mission folder.
- Copy init.sqf (or merge) inside mission folder.
- Open downloaded description.ext and add Cfgsound class (or merge) inside mission\description.ext 




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
