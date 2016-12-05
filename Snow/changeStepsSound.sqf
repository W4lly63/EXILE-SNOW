/*
W4lly63 -2016
snow footsteps sound
0 = [volume,ear_distance] call WY_fnc_SnowFootSteps;
*/

WY_fnc_SnowFootSteps = {

  private["_house","_speedP","_soundPath","_soundToPlay","_soundStepsNumb","_soundStepsSelected","_sleepL","_sleepR","_ssVolume","_ssDistance","_overShoreS","_overWaterS"];
  _ssVolume = _this select 0;
  _ssDistance = _this select 1;
  _house="";
  _soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
  _sleepL = 0;
  _sleepR = 0;
  _soundStepsSelected ="";
  _soundStepsNumb = 0;

  KK_fnc_inHouse = {
    lineIntersectsSurfaces [
      getPosWorld _this,
      getPosWorld _this vectorAdd [0, 0, 50],
      _this, objNull, true, 1, "GEOM", "NONE"
    ] select 0 params ["","","","_house"];
    if (_house isKindOf "House") exitWith {true};
    false;
  };

  waitUntil {alive player};

  while {true} do {
    _speedP = round (abs (speed player));
    _overShoreS = !(position player isFlatEmpty  [-1, -1, -1, -1, 0, true] isEqualTo []);
    _overWaterS = !(position player isFlatEmpty  [-1, -1, -1, -1, 2, false] isEqualTo []);
    //hint format["speed : %1", _speedP];
    if((vehicle player == player) &&  (not  isOnRoad player)  &&   ( not (player call KK_fnc_inHouse)) && (_speedP != 0) && !_overWaterS ) then {
      if((stance player != "PRONE")  && (stance player != "UNDEFINED")) then {

        _speedP =  round (abs (speed player));

        if((_speedP <= 6) && (_speedP > 2)) then {
            _soundStepsNumb = 0;
          if(stance player == "CROUCH") then {
            _sleepL = 0.6;
            _sleepR = 0.7;
          };
          if(stance player == "STAND") then {
            _sleepL = 0.5;
            _sleepR = 0.7;
          };
        };
        if((_speedP <= 15) && (_speedP > 6 ))then {
            _soundStepsNumb = 1;
          if(stance player == "CROUCH") then {
            _sleepL = 0.4;
            _sleepR = 0.3;
          };
          if(stance player == "STAND") then {
            _sleepL = 0.4;
           _sleepR = 0.3;
          };
        };
        if(_speedP > 15)then {
            _soundStepsNumb = 2;
          if(stance player == "STAND") then {
            _sleepL = 0.30;
            _sleepR = 0.30;
          };
         if(stance player == "CROUCH") then {
            _sleepL = 0.3;
            _sleepR = 0.3;
          };
        };
        _speedP =  round (abs (speed player));
        if((_sleepR != 0)  || (_speedP > 2)) then {
          _soundStepsSelected = format ["sounds\fs%1L.ogg",_soundStepsNumb];
          _soundToPlay = _soundPath + _soundStepsSelected;
          playSound3D [_soundToPlay, player, false, getPosASL player, _ssVolume, 1, _ssDistance];
          sleep  _sleepL;
          _soundStepsSelected = format ["sounds\fs%1R.ogg",_soundStepsNumb];
          _soundToPlay = _soundPath + _soundStepsSelected;
          playSound3D [_soundToPlay, player, false, getPosASL player, _ssVolume, 1, _ssDistance];
          sleep  _sleepR;
        };
     };
   };

     _sleepL = 0;
     _sleepR = 0;
  };
  (true);
};

#include "fn_settings.sqf"

if(_snowStepsSound) then {
  0 = [_ssVolume,_ssDistance] call WY_fnc_SnowFootSteps;
};
