MageInit = {
	_tmp = [];
	_tmp pushBack (player addAction ["<t color='#FF0000'>Open Spellbook</t>", "OpenSB.sqf"]);
	player setVariable ["MAction", _tmp, false];
	player setVariable ["ASke", []];
	player setVariable ["ISke", 0];
};

RaiseDeadSkel = {
	_unit = group player createUnit ["Skeleton_Thrall", position player, [], 10, "NONE"];
	ASkel = player getVariable "ASke";
	ASkel pushBack _unit;
	player setVariable ["ASke", ASkel];

	waitUntil {sleep 1; not alive _unit};

	ASkel = player getVariable "ASke";
	ASkel = ASkel - [_unit];
	player setVariable ["ASke", ASkel];
	deleteVehicle _unit;
};

RemoveMagicAction = {
	to_delete = player getVariable "MAction";
	{
		player removeAction _x;
	} forEach to_delete;
};

SaveLoadout = {
	player setVariable ["PLoadout", getUnitLoadout player];
};

RearmLoadout = {
	_PLoadout = player getVariable "PLoadout";
	player setUnitLoadout _PLoadout;
};

call SaveLoadout;