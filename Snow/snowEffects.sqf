/*
W4lly63 2016
[]execVM "Snow\snowEffects.sqf"

*/

#include "snowFunctions.sqf"

private ["_windOn"];

////////////////////////////settings//////////////////////////////////////

_windOn = true;  // activate/deactivate wind true/false


//////////////////////////end settings////////////////////////////////////


if(_windOn) then {
	0 = [] call WY_fnc_envirWind;
};
