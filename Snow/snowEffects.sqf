/* 
Goon/Gooncorp 2015
call from init.sqf
[] execVM "goon_snowstorm.sqf"; 
*/
private ["_windStr","_windDir","_windStrCrt","_windDirCrt","_obj","_pos","_soundPath","_soundToPlay","_volumeWind","_windStrCrt","_windDirCrt","_house","_soundTime","_windSleep"];


_house="";
_soundTime = 0;
changeWindSoundLvl = true;


/*_alpha = .55 + random 0.12;// set the alpha of the particles
[_alpha] spawn {     

        while {true} do {		
	       _obj = (vehicle player);
	       _pos = getposASL _obj;
               setwind [0.401112*2,0.204166*2,false];
               _n =  abs(wind select 0) + abs(wind select 1) + abs(wind select 2);
               _velocity = wind;
               _color = [1, 1, 1];   


_hndl = ppEffectCreate ["colorCorrections", 1501];
_hndl ppEffectEnable true;
_hndl ppEffectAdjust [1.0, 1.0, 0.0, [.3, .3, 1.0, .1], [.88, .88, .93, .45], [1 , 1, 1, 0.03]];//white 
_hndl ppEffectCommit 0;


       
              _snowflakes1 = "#particlesource" createVehicleLocal _pos; 
	       //_snowflakes1  attachto [player, [0,0,12]];
               _snowflakes1  setParticleParams [["a3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 14, 2, 0], "", "Billboard", 1, 22, [0, 0, 6], _velocity, (0), 1.69, 1, 1, [1.5], [[1,1,1,0],[1,1,1,1],[1,1,1,1]],[1000], 0, 0, "", "", _obj];
               _snowflakes1  setParticleRandom [0, [24 + (random 2),24 + (random 2), 4], [0, 0, 0], 0, 0, [0, 0, 0, .03], 0, 0];
               _snowflakes1  setParticleCircle [0, [0, 0, 0]];
               _snowflakes1  setDropInterval 0.001; 


               _snowflakes2 = "#particlesource" createVehicleLocal _pos; 
	       //_snowflakes2  attachto [player, [0,0,12]];
               _snowflakes2  setParticleParams [["a3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 12, 2, 0], "", "Billboard", 1, 14, [0, 0, 6], _velocity, (0), 1.39, 0, 0, [.2], [[1,1,1,0],[1,1,1,1],[1,1,1,1]],[1000], 0, 0, "", "", _obj];
               _snowflakes2  setParticleRandom [0, [14 + (random 2),14 + (random 2), 5], [0, 0, 0], 0, 0, [0, 0, 0, 2], 0, 0];
              _snowflakes2  setParticleCircle [0, [0, 0, 0]];
               _snowflakes2  setDropInterval 0.004; 


               _clouds1 = "#particlesource" createVehicleLocal _pos; 
	       //_clouds1  attachto [player, [0,0,12]];
               _clouds1  setParticleParams [["a3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 12, 2, 0], "", "Billboard", 1,22, [0, 0, 16], _velocity, (_n * 4), 1.72, 1, 1, [22 + random 33], [[1,1,1,0],[1,1,1,1],[1,1,1,0]],[1000], 0, 0, "", "", _obj];
               _clouds1  setParticleRandom [3, [55 + (random 8),55 + (random 10), 55], [2, 2, 0], 0, 0, [0, 0, 0, 0], 0, 0];
               _clouds1  setParticleCircle [0, [0, 0, 0]];
               _clouds1  setDropInterval 0.05; 





               _clouds2 = "#particlesource" createVehicleLocal _pos; 
	      // _clouds2  attachto [player, [0,0,12]];
               _clouds2  setParticleParams [["a3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 13, 6, 0], "", "Billboard", 1, 22, [0, 0, 36], _velocity, (0), 1.52, 1, 1, [5 + random 23], [[1,1,1,0],[1,1,1,.4],[1,1,1,0]],[1000], 0, 0, "", "", _obj];
               _clouds2  setParticleRandom [3, [24 + (random 8),24 + (random 10), 15], [2, 2, 0], 0, 0, [0, 0, 0, 0], 0, 0];
               _clouds2  setParticleCircle [0, [0, 0, 0]];
               _clouds2  setDropInterval 0.1; 


               _delay = 30;
               uiSleep _delay;
	       deletevehicle _snowflakes1;
	       deletevehicle _snowflakes2;
	       deletevehicle _clouds1;
	       deletevehicle _clouds2;

        };
};*/



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
