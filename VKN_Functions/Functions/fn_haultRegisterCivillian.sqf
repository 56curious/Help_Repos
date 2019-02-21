/*
Script name:    fn_haultRegisterUnit.sqf
Created on:     21 February ‎2018
Author:         Curious

Description:    Register a unit for haulting.

Framework:      Unit Haulting

Parameters:
				0: OBJECT - The object (or unit) that will be assigned the action.
*/

params ["_unit"];

_haultArray = missionNamespace getVariable ["VKN_fnc_haultRegisteredUnits_Var", ""];
_haultArrayFinal = str _unit + _haultArray;
missionnamespace setVariable ["VKN_fnc_haultRegisteredUnits_Var", _haultArrayFinal];

[_unit] call VKN_fnc_haultAddAction;