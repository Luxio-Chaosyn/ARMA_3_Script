call RemoveMagicAction;
tmp = player addAction ["<t color='#FF0000'>Open Spellbook</t>", "OpenSB.sqf"];
tmp = [tmp];
player setVariable ["MAction", tmp, false];