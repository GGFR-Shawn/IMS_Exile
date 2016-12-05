/*
	IMS_fnc_CreateMarker
	Created by eraser1 and modified by Salutesh

	Usage:
	[
		_position,				// ARRAY (positionATL or position2d): Where the marker will be spawned (strict)
		_markerLabel,			// NUMBER: Label to spawn for the marker.
		_markerName				// STRING: Name to spawn for the marker.
	] call IMS_fnc_CreateMarker;

	Returns the created vehicle object.
*/

private _marker = objNull;

try
{
	if !(params
	[
		"_position",
		"_markerLabel",
		"_markerName"
	])
	then
	{
		throw (format ["Invalid parameters: %1",_this]);
	};

	_marker = createMarker [_markerName, _position];
	_marker setMarkerType "ExileHeart";
	_marker setMarkerAlpha 1; 
	_marker setMarkerText format ["[%1]: %2", _markerLabel,_markerName];
	_marker setMarkerColor "ColorOrange";
	[300, {deleteMarker _markerName;}, [_marker], false] call ExileServer_system_thread_addTask;
}
catch
{
	diag_log format ["IMS ERROR :: Calling IMS_fnc_CreateMarker with %1!",_exception];
};


_marker
