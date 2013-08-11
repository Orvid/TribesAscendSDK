module UnrealScript.Engine.EdCoordSystem;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface EdCoordSystem : UObject
{
public extern(D):
	@property final auto ref
	{
		ScriptString Desc() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 128); }
		UObject.Matrix M() { return *cast(UObject.Matrix*)(cast(size_t)cast(void*)this + 64); }
	}
}
