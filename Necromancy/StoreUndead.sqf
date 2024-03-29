ASkel = player getVariable "ASke";
tmp = 0;
{
	deleteVehicle _x;
	tmp = tmp + 1;
} forEach ASkel;
if (tmp > 5) then { tmp = 5 };
player setVariable ["ISke", tmp];