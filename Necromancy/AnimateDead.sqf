_dead_units = position player nearObjects["Man", 3];
{
    if (alive _x || isPlayer _x) then {_dead_units = _dead_units - [_x]};
} forEach _dead_units;

ASkel = player getVariable "ASke";
ASkel = count ASkel;
ISkel = player getVariable "ISke";
while {count _dead_units > 5 - ASkel - ISkel && count _dead_units > 0} do
{
    _dead_units deleteAt 0;
};

{
    sleep 1;
    remoteExec ["RaiseDeadSkel", player];
    _itm = items _x;
    _mag = magazines _x;
    deleteVehicle _x;
    _wh = "groundWeaponHolder" createVehicle getpos _x;

    {
      _wh addMagazineCargoGlobal [_x, 1];
    } forEach _mag;

    {
      _wh addItemCargoGlobal [_x, 1];
    } forEach _itm;

} forEach _dead_units;