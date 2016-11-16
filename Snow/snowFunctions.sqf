/* 
W4lly63 2016
functions
*/


WY_fnc_envirWind ={
	
	private ["_yyy","_xxx","_soundTime","_windSleep","_posSoundsArray","_soundsArray","_soundSelected","_soundTime2","_soundSleep"];
	
	_house="";
	_soundTime = 0;
	changeWindSoundLvl = true;
	_xxx=0;_yyy=0;
	_posSoundsArray = [-50,-10,-20,-30,-40,-50,10,20,30,40,50];
	_soundsArray =["Ss1","Ss2","Ss3","Ss4","Ss5","Ss6","Ss7","Ss8","Ss9","Ss10","Ss11","Ss12","Ss13","Ss14"];
	
	while {true} do {
	
    	waitUntil {alive player};
	    _xxx = selectRandom _posSoundsArray;
	    _yyy = selectRandom _posSoundsArray;
	    _soundSelected = selectRandom _soundsArray;
    	objSP = "Land_Bucket_F" createVehicleLocal position player;
    	objSP attachTo [player,[_xxx,_yyy,0]];
    	objSP hideObject true;
    	objSP allowDamage false;
   	    objSP enableSimulation false;
    	if(changeWindSoundLvl || (gusts < 0.5))	then {
        	player say ["snowWindd2", 5,1];
		};
    	if(!changeWindSoundLvl && (gusts >= 0.5))	then {
        	player say ["snowWindd", 5,1];
			if ((vehicle player == player)) then {
            	objSP say3D [_soundSelected,100,1];
	    	};
		};
		_soundTime = (diag_tickTime + 17);
		waitUntil {(diag_tickTime  > _soundTime)};
		deleteVehicle objSP;
		if(overcast < 0.2) then {changeWindSoundLvl = true;};
		_windSleep = selectRandom [0,1,2,3,4,5,6,7,8,9,10];
		uiSleep _windSleep;
	};
	(true);
};






