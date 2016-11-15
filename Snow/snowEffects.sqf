/* 
W4lly63
[] execVM "snowEffects.sqf"
//////////TODO = Blizzard effects
*/
private ["_soundTime","_windSleep"];

_soundTime = 0;
changeWindSoundLvl = true;

while {true} do {
	
    waitUntil {alive player};
    objSP = "Land_Bucket_F" createVehicle position player;
    objSP attachTo [player,[0,0,0]];
    objSP hideObject true;
    objSP allowDamage false;
    objSP enableSimulation false;
    if(changeWindSoundLvl || (gusts < 0.5))	then {
      objSP say ["snowWindd2", 5,1];
	};
    if(!changeWindSoundLvl && (gusts >= 0.5))	then {
      objSP say ["snowWindd", 5,1];
	};
	_soundTime = (diag_tickTime + 17);
	waitUntil {(diag_tickTime  > _soundTime)};
	deleteVehicle objSP;
	if(overcast < 0.2) then {changeWindSoundLvl = true;};
	_windSleep = selectRandom [0,1,2,3,4,5,6,7,8,9,10];
	uiSleep _windSleep;
};
