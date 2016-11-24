////////////////////////////settings//////////////////////////////////////

_windOn                = true;                                                                // activate/deactivate wind true/false

_maskOn                = true;                                                                // activate/deactivate snowMask simulation true/false
_glassesOnlySnow       = true;                                                                // Work only with _maskOn = true -------   if you want snowMask only when snow falling or raining  - if false mask when sunny too
_useCheckGlasses       = true;                                                                // Work only with _maskOn = true--------- check if player have mask defined in _gogglesArray ----- mask can be in all places , backpack , vest, uniform or assigned slot
_gogglesArray          = ["G_Combat","G_Combat_Goggles_tna_F","G_Goggles_VR"];                // Work only with _maskOn = true--------- array of mask allowed
_noCheckBackpack       = true;                                                                // Work only with _maskOn = true--------- check or not in backpack for glasses (recommended true for have a place for remove at the moment glasses)

//////////////////////////end settings////////////////////////////////////
