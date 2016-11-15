# EXILE-SNOW v.0.2 - Sounds + effects(todo)
Snow script temperature and overcast based

Temperature based (down to 1 snow --- up to 1 no snow).
Overcast based (change intensity based to overcast).
No snow inside buildings .
[removed] crichets sound and other summer sounds
[added] sound of winter wind based on real wind power - volume reduced inside buildings.

Installation




# EXILE-SNOW v.0.1 (folder OnlySnow)
Snow script temperature and overcast based

Temperature based (down to 1 snow --- up to 1 no snow).
Overcast based (change intensity based to overcast).
No snow inside buildings .

Installation

open mission 
copy ExileClient_system_snow_thread_update.sqf inside,
Open config.cpp , search "class CfgExileCustomCode" and add this line inside class

ExileClient_system_snow_thread_update = "ExileClient_system_snow_thread_update.sqf";
