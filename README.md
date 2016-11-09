# EXILE-SNOW
Snow script temperature and overcast based

Temperature based (down to 1 snow up to 1 rain)
Overcast based (change intensity based to overcast)
No snow inside buildings (can be edited ExileSnowFar setDropInterval inside inBuildings code part)
Installation

open mission 
copy ExileClient_system_snow_thread_update.sqf inside,
Open config.cpp , search "class CfgExileCustomCode" and add this line inside class

ExileClient_system_snow_thread_update = "ExileClient_system_snow_thread_update.sqf";
