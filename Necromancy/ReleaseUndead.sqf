ISkel = player getVariable "ISke";
for [{_i = 0}, {_i < ISkel}, {_i = _i + 1}] do {
	sleep 1;
	remoteExec ["RaiseDeadSkel", player];
};
player setVariable ["ISke", 0];