if (hasInterface) then {
   []execVM "Snow\snowEffects.sqf"; 
   []execVM "Snow\snowScreen.sqf";
};

waitUntil {time > 0};
enableEnvironment false;
