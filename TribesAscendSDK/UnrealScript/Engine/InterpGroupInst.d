module UnrealScript.Engine.InterpGroupInst;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.InterpTrackInst;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.InterpGroup;

extern(C++) interface InterpGroupInst : UObject
{
public extern(D):
	@property final auto ref
	{
		ScriptArray!(InterpTrackInst) TrackInst() { return *cast(ScriptArray!(InterpTrackInst)*)(cast(size_t)cast(void*)this + 68); }
		Actor GroupActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 64); }
		InterpGroup Group() { return *cast(InterpGroup*)(cast(size_t)cast(void*)this + 60); }
	}
}
