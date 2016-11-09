/**
 * ExileClient_system_snow_thread_update
 *
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_enableSnow","_getTempValue","_tTemp","_house"];
_enableSnow = false;
_house ="";


    _getTempValue = format ["%1", [ExileClientEnvironmentTemperature, 1] call ExileClient_util_math_round];
    _tTemp = parseNumber _getTempValue;
    if ( _tTemp  <= 1) then
    {
		0 setRain 0;
        /*forceWeatherChange;
        999999 setRain 0;*/
		_enableSnow = true;
		ExileSnowClose attachTo [vehicle player, [0, 4, 1]];
		ExileSnowNear attachTo [vehicle player, [0, 4, 1.5]];
		ExileSnowFar attachTo [vehicle player, [0, 4, 2]];
    };	

    if (_enableSnow ) then 
    {	
	    if(player call KK_fnc_inHouse) exitWith {};
	    0 setRain 0;
	    ExileSnowClose attachTo [vehicle player, [0, 4, 1]];
	    ExileSnowNear attachTo [vehicle player, [0, 4, 1.5]];
	    ExileSnowFar attachTo [vehicle player, [0, 4, 2]];
		if(overcast < 0.2) then {
	        ExileSnowClose setDropInterval 0;
	        ExileSnowNear setDropInterval 0;
	        ExileSnowFar setDropInterval 0;
		};
		if ((overcast >= 0.2)  && (overcast < 0.5)) then {
	        ExileSnowClose setDropInterval 0.1;
	        ExileSnowNear setDropInterval 0.1;
	        ExileSnowFar setDropInterval 0.1;
		};
		if ((overcast >= 0.5 )&& (overcast < 0.7)) then {
	        ExileSnowClose setDropInterval 0.05;
	        ExileSnowNear setDropInterval 0.05;
	        ExileSnowFar setDropInterval 0.05;
		};
		if (overcast >= 0.7) then {
	        ExileSnowClose setDropInterval 0.01;
	        ExileSnowNear setDropInterval 0.01;
	        ExileSnowFar setDropInterval 0.01;
		};		
    };
    if (_enableSnow &&  (player call KK_fnc_inHouse)) then 
    {	
	    0 setRain 0;
	    ExileSnowClose attachTo [vehicle player, [0, 4, 1]];
	    ExileSnowNear attachTo [vehicle player, [0, 4, 1.5]];
	    ExileSnowFar attachTo [vehicle player, [0, 4, 2]];
		if(overcast < 0.2) then {
	        ExileSnowClose setDropInterval 0;
	        ExileSnowNear setDropInterval 0;
	        ExileSnowFar setDropInterval 0;
		};
		if ((overcast >= 0.2)  && (overcast < 0.5)) then {
	        ExileSnowClose setDropInterval 0;
	        ExileSnowNear setDropInterval 0;
	        ExileSnowFar setDropInterval 0.1;
		};
		if ((overcast >= 0.5 )&& (overcast < 0.7)) then {
	        ExileSnowClose setDropInterval 0;
	        ExileSnowNear setDropInterval 0;
	        ExileSnowFar setDropInterval 0.05;
		};
		if (overcast >= 0.7) then {
	        ExileSnowClose setDropInterval 0;
	        ExileSnowNear setDropInterval 0;
	        ExileSnowFar setDropInterval 0.01;
		};		
    };
    if !(_enablesnow) then
    {
	    ExileSnowClose setDropInterval 0;
	    ExileSnowNear setDropInterval 0;
	    ExileSnowFar setDropInterval 0;
    };

KK_fnc_inHouse = {
	lineIntersectsSurfaces [
		getPosWorld _this, 
		getPosWorld _this vectorAdd [0, 0, 50], 
		_this, objNull, true, 1, "GEOM", "NONE"
	] select 0 params ["","","","_house"];
	if (_house isKindOf "House") exitWith {true};
	false;
};


