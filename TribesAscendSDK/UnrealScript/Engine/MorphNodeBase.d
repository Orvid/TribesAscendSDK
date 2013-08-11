module UnrealScript.Engine.MorphNodeBase;

import ScriptClasses;
import UnrealScript.Engine.AnimObject;

extern(C++) interface MorphNodeBase : AnimObject
{
public extern(D):
	@property final
	{
		@property final auto ref ScriptName NodeName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 96); }
		bool bDrawSlider() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x1) != 0; }
		bool bDrawSlider(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x1; } return val; }
	}
}
